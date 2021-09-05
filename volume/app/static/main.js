var HOVER_INFO_DIVID = '#hoverinfo';
var HOVER_INFO_PARENT_DIVID = '#hoverinfo_parent';
var ENCODED_MAX = 3.057098388671875;
var ENCODED_MIN = ENCODED_MAX * -1;


var SKY_DIV_ID = '#sky';
var SCALE_FACTOR = 100;
var SCALE_BASE = SCALE_FACTOR*ENCODED_MAX;


var Row = {
    index: "",
    NBHC_x: "",
    STR: "",
    tBEDS: "",
    tBATHS: "",
    tSTORIES: "",
    tUNITS: "",
    tBLDGS: "",
    ACT: "",
    EFF: "",
    HEAT_AR: "",
    BASE: "",
    ACREAGE: 0,
    encoded_x: 0,
    encoded_y: 0,
    Date: "",
    REA_CD: ""
}
var RC = {};
RC["01"] = "Sale qualified per exam of deed";
RC['02'] = 'Sale qualified on credible evidence';
RC['04'] = 'Undefined';
RC['05'] = 'Multiple parcels';
RC['06'] = 'Arm\'s length sale crosses county lines';
RC['11'] = '$100 corrective deed';
RC['12'] = 'Deeds to/from financial institutions';
RC['13'] = 'Cemetery lots';
RC['14'] = 'Life estate';
RC['15'] = 'Undefined';
RC['16'] = 'Partial interest';
RC['17'] = 'Religious/charitable organization';
RC['18'] = 'Government, school, court, or other government entity';
RC['19'] = 'Bankruptcy, executor, guardian, receiver';
RC['20'] = 'Utility company';
RC['21'] = 'Undefined';
RC['2A'] = 'Qualified bank sale';
RC['2B'] = 'Qualified short sale';
RC['30'] = 'Related parties';
RC['31'] = 'Trade or exchange';
RC['32'] = 'Pre-construction sale';
RC['33'] = 'Incomplete common area improvements';
RC['34'] = 'Satisfaction of prior property contract';
RC['35'] = 'Atypical personal property';
RC['36'] = 'Atypical costs of sale';
RC['37'] = 'Not exposed to open market';
RC['38'] = 'Duress or to prevent foreclosure';
RC['39'] = 'Different sale price than doc stamps';
RC['3A'] = 'New construction after sale';
RC['3B'] = 'Demolition after sale';
RC['3C'] = 'Split after sale';
RC['3D'] = 'Join after sale';
RC['3J'] = 'Undefined';
RC['40'] = 'Non-market financing';
RC['41'] = 'Other: Requires prior Department Of Revenue approval';
RC['43'] = 'Allocated price as part of bulk sale';
RC['4A'] = 'Undefined';
RC['4C'] = 'Subject to rezoning/rezoned after sale';
RC['98'] = 'Sale with deed errors';


function scaleToWindow(encoded_x, encoded_y) {
    var x = encoded_x * SCALE_FACTOR + SCALE_BASE;
    var y = encoded_y * SCALE_FACTOR + SCALE_BASE;
    return {x: x, y: y};
}

function scaleDataPoint(x, y) {
    x = x * SCALE_FACTOR + SCALE_BASE;
    y = y * SCALE_FACTOR + SCALE_BASE;
    x = x - 20;
    y = 611.62 - y;
    return {x: x, y: y};
}

function round(n,d) {
    return Math.round(n * d) / d;
}

function removeDateFromArray(date, array) { 
    if (!Array.isArray(array)) return [];
    var pos = array.indexOf(date);
    array.splice(pos, 1);
    return array
}

var RememberRow = function(row_dict, index, array) {
    date = row_dict['date'];
    index = row_dict['index'];
    if (date in dataset) {
        if (index in dataset[date]) {}
        else {
            dataset[date][index] = row_dict;
        }
    } else {
        dataset[date] = {};
        dataset[date][index] = row_dict;
    }
    dataset_byindex[index] = row_dict;

    $newRowDiv = $('<div></div>').addClass("cell").addClass('cell');
    
    var pos = scaleDataPoint(row_dict.encoded_x, row_dict.encoded_y);
    $newRowDiv.css({left: pos.x, top: pos.y});
    $newRowDiv.data = row_dict;
    $newRowDiv.hover(function() {
        for (const [key, value] of Object.entries(row_dict)) {

            //console.log(key + ": " + value);
            
            if (key == "REA_CD") {
                var rea_description = 'undefined';
                if (value in RC) {
                    rea_description = RC[value];
                    //console.log("....." + key + ": " + value + " - " + rea_description);
                }
                $("#" + key).text(rea_description);
            } else if (key == "ACREAGE") {
                $("#" + key).text(round(value, 100));
            } else {
                $("#" + key).text(value);
            }
            
        }
        //$(HOVER_INFO_DIVID).text(JSON.stringify(row_dict));
    });
    $(SKY_DIV_ID).append($newRowDiv);
    rows_received += 1;
    $("#rows_received").text(rows_received);
}

function makeBorders() {
    var left_top = scaleToWindow(ENCODED_MIN, ENCODED_MIN);
    var top_left = scaleToWindow(ENCODED_MIN, ENCODED_MIN);
    var top_right = scaleToWindow(ENCODED_MAX, ENCODED_MIN);
    var bottom_left = scaleToWindow(ENCODED_MIN, ENCODED_MAX);
    var bottom_right = scaleToWindow(ENCODED_MAX, ENCODED_MAX);
    var width_height = scaleToWindow(ENCODED_MAX, ENCODED_MAX);
    
    var $top = $('<div></div>').addClass("cell").addClass('cell').css({
        width: width_height.x, 
        height: 1, 
        left: top_left.x, 
        top: top_right.y});
    var $bottom = $('<div></div>').addClass("cell").addClass('cell').css({
        width: top_right.x, 
        height: 1, 
        left: bottom_left.x, 
        top: bottom_right.y});
    var $left = $('<div></div>').addClass("cell").addClass('cell').css({
        width: 1, 
        height: bottom_left.y, 
        left: bottom_left.x, 
        top: top_left.y});
    var $right = $('<div></div>').addClass("cell").addClass('cell').css({
        width: 1, 
        height: bottom_left.y, 
        left: bottom_right.x, 
        top: top_right.y});
   
    $(SKY_DIV_ID).css({width: top_right.x, left: top_left.x, height: bottom_left.y, width: bottom_right.x});
    $(HOVER_INFO_PARENT_DIVID).css({left: top_right.x + 20});
    
}

function IdentifyAllDatesToGet(start, end) {
    var current = start;
    var nmax = 10000;
    var i = 0;
    var temp = [];
    while (current != end) {
        temp.push(current);
        current = addDays(current, 1);
        i++;
        if (i >= nmax) break;
    }
    return temp;
}

function addToRequestBuffer() {
    var num_to_fetch = fetch_size - request_buffer.length;
    if (num_to_fetch > 0) {
        for (var i = 0; i < num_to_fetch; i++) {
            request_buffer.push(all_dates_to_get[i]);
            all_dates_to_get = removeDateFromArray(all_dates_to_get[i], all_dates_to_get);
            
        }
    }
}

main_loop = function(timestamp) {
    if (start_date == "") { /* waiting for date_range */ }
    else if (request_buffer.length > 0) {
        request_buffer.forEach(get_date);
        for (var i = 0; i < request_buffer.length;i++) {
            all_dates_to_get = removeDateFromArray(request_buffer[i], all_dates_to_get);
            request_buffer = removeDateFromArray(request_buffer[i], request_buffer);
        }
        //if (all_dates_to_get.length > 0) console.log(all_dates_to_get);
        
    }
    
    window.requestAnimationFrame(main_loop);
}

got_data = function(data) {
    //console.log("got data: " + JSON.stringify(data));
    makeBorders();
    data.forEach(RememberRow);
    var date = data[0]['date'];
    
    
    //console.log("all_dates_to_get.length: " + all_dates_to_get.length);
    addToRequestBuffer();

}
got_daterange = function(data) {
    console.log("received daterange");
    console.log("got daterange: " + JSON.stringify(data));
    start_date = "2021-01-01"; //data.start;
    end_date = data.end;
    request_buffer = [];
    for (var i = 0; i < fetch_size; i++) {
        request_buffer.push(addDays(start_date,i));    
    }
    all_dates_to_get = IdentifyAllDatesToGet(start_date, end_date);
    $("#startdate").text(start_date);
    $("#enddate").text(end_date);
    console.log("all_dates_to_get: " + all_dates_to_get.length);
    console.log(all_dates_to_get);
    console.log(request_buffer);
}

$( document ).ready(function() {
    console.log( "ready!" );
    get_daterange();
    //get_data();
    main_loop();
});