from flask import Flask, render_template, request, send_file, send_from_directory
from flask import jsonify
import json
import mysql.connector as mysql
import numpy as np
import random
from src.db import *
from waitress import serve
from src.model import *
import sys
import time

# Setup 

app=Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')


@app.route('/get', methods=["GET"])
def get():
    print(f"request.args: {request.args}")
    print(f"request.method: {request.method}")
    if request.method == 'GET':
        if 'date' in request.args:
            date = request.args['date']
            print(date)
            return getSalesOnDate(date)
        elif 'daterange' in request.args:
            daterange = getDateRange()
            print(f'request: daterange, {daterange}')
            return {"start":daterange[0], "end":daterange[1]}
    return


if __name__ == '__main__':
    #app.debug=False
    #app.run()
    running = False
    for arg in sys.argv:
        if arg.lower() == "debug":
            running = True
            print("Running debug server.")
            app.debug=True
            app.run()

            break
        elif arg.lower() == "production":
            running = True
            print("Running production server.")
            serve(app, host='0.0.0.0', port=80)
            break
    
    if not running:
        print("Indicate either debug or production mode, e.g., python app.py debug")