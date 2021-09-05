Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

function join(t, a, s) {
    function format(m) {
       let f = new Intl.DateTimeFormat('en', m);
       return f.format(t);
    }
    return a.map(format).join(s);
 }
 
 let a = [{year: 'numeric'}, {month: '2-digit'}, {day: '2-digit'}];
 let s = join(new Date, a, '-');

 function addDays(anchor_date, delta) {
     delta += 1;
     var newDate = new Date(anchor_date).addDays(delta);
     return join(newDate, a, '-');
 }