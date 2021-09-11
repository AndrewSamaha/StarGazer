import mysql.connector as mysql
import numpy as np
import base64
import PIL
from PIL import Image as Image
import io
import re
import pandas as pd


'''
Basic DB Functions
'''
def dfQuery(query):
    cnx = mysql.connect(
        host="db",
        port=3306,
        user="root",
        password="datascience",
        db="stargazer")
    cur = cnx.cursor()

    # Execute a query
    cur.execute(query)

    # Fetch one result
    result = cur.fetchall()
    field_names = [ i [0] for i in cur.description ]
    df = pd.DataFrame( result, columns=field_names)
    
    cnx.close()
    return df

def getSalesOnDate(date):
    date = date.split(".")
    date = "-".join(date)
    return dfQuery(f"select * from stargazer.hills_encoded2 where Date='{date}';").to_json(orient='records')

def getDateRange():
    start = dfQuery(f"select distinct Date from stargazer.hills_encoded2 order by Date ASC limit 1;")
    end = dfQuery(f"select distinct Date from stargazer.hills_encoded2 order by Date DESC limit 1;")
    start = start.values[0][0]
    end = end.values[0][0]
    return start,end

'''
Jupyter Notebook functions
'''
def showURI(imageuri):
    imgstr = re.search(r'base64,(.*)', imageuri).group(1)
    image_bytes = io.BytesIO(base64.b64decode(imgstr))
    im = Image.open(image_bytes)
    display(im)

def showNP(a, fmt='png'):
    a = np.uint8(a)
    f = io.StringIO()
    display(PIL.Image.fromarray(a))



'''
Image functions
'''
def uriToIMG(imageuri):
    imgstr = re.search(r'base64,(.*)', imageuri).group(1)
    image_bytes = io.BytesIO(base64.b64decode(imgstr))
    return Image.open(image_bytes)

def imageToNp(im):
    arr = np.array(im)[:,:,0]
    return arr

def uriToNP(imageuri):
    imgstr = re.search(r'base64,(.*)', imageuri).group(1)
    image_bytes = io.BytesIO(base64.b64decode(imgstr))
    im = Image.open(image_bytes)
    nparray = np.array(im)
    if len(nparray.shape) == 2:
        arr = np.array(im)[:,:]
    elif len(nparray.shape) == 3:
        arr = np.array(im)[:,:,0]
    return arr

def pilToURI(img):
    buffered = io.BytesIO()
    img.save(buffered, format="PNG")
    img_str = base64.b64encode(buffered.getvalue())
    ret = u'data:image/png;base64,'+str(img_str)[2:-1:]
    return ret

def getTimeFromNP(nparray):
    if len(nparray.shape) == 2:
        t = nparray[:,-1]
    elif len(nparray.shape) == 3:
        t = nparray[:,-1,0]
    return t


'''
database functions
'''
def createProcessingLayer(db, batchid, inputlayerid, name, description):
    #returns the id of the new processing layer
    dbcursor = db.cursor()
    dbcursor.execute(f"INSERT INTO processing_layers(batchid, inputlayerid, name, description) VALUES('{batchid}','{inputlayerid}','{name}','{description}')")
    db.commit()
    return dbcursor.lastrowid

def createBatch(db, name, description):
    dbcursor = db.cursor()
    dbcursor.execute(f"INSERT INTO batches(name, description) VALUES('{name}','{description}')")
    db.commit()
    return dbcursor.lastrowid, name, description

def getBatches(db):
    dbcursor = db.cursor()
    dbcursor.execute(f"SELECT * FROM batches")
    return dbcursor.fetchall()

def getLayers(db):
    dbcursor = db.cursor()
    dbcursor.execute(f"SELECT * FROM processing_layers")
    return dbcursor.fetchall()

# def saveImage(db, batchid, layerid, time, position, velocity, rotation, image):
#     insertCmd = "INSERT into images(time, position, velocity, rotation, batchid, layerid, image) VALUES ('"+str(time)+"', '"+str(position)+"','"+str(velocity)+"','"+str(rotation)+"','"+str(batchid)+"','"+str(layerid)+"','%s');"
#     try:
#         db.cursor().execute(insertCmd, (image))
#         db.commit()
#     except Exception as e:
#         print(f"Exception: {e}")

def saveImage(db, batchid, layerid, time, position, velocity, rotation, image, tdelta=None):
    insertCmd = "INSERT into images(time, position, velocity, rotation, batchid, layerid, tdelta, image) VALUES (%s,%s,%s,%s,%s,%s,%s,%s);"
    try:
        db.cursor().execute(insertCmd, (time, position, velocity, rotation, batchid, layerid, tdelta, image))
        db.commit()
    except Exception as e:
        print(f"Exception: {e}")

def getDataset(db, batch, layer):
    dbcursor = db.cursor()
    dbcursor.execute(f"SELECT * FROM images WHERE layerid = '{layer}' and batchid = '{batch}'")
    results = dbcursor.fetchall()
    X = None
    Y = None
    TDeltaCol = None
    for i, result in enumerate(results):
        if i % 1000 == 0 and i > 0:
            print(f"loaded {i} out of {len(results)}, {100*i/len(results)}%   TDeltaCol.shape={TDeltaCol.shape}")

        position = result[2]
        velocity = result[3]
        rotation = result[4]
        tdelta   = np.array(result[7]).reshape(1,1)

        image_arr = uriToNP(result[8])
        x_row = image_arr.reshape(1,-1)
        #x_row = np.append(x_row, tdelta)

        y_row = np.array([position, velocity, rotation]).reshape(1,-1)

        if X is not None:
            X = np.vstack((X, x_row))
            Y = np.vstack((Y, y_row))
            TDeltaCol = np.vstack((TDeltaCol, tdelta))
        else:
            X = x_row
            Y = y_row
            TDeltaCol = tdelta

    X = np.hstack((X,TDeltaCol))
    return X, Y