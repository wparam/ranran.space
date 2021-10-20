const moment = require('moment');

/** 
 * 
 * Parames:
 * startDate: string   - '10/7/2021'
 * endDate:   string   - '10/25/2021'
 * weekDay:  string   - 'MONDAY'
 * Return:   array - ['10/11/2021', '10/18/2021', '10/25/2021']
 *///
const calc = (startDate, endDate, weekDay) => {
    if(!startDate || !endDate || !weekDay){
        return;
    }
    let startMom = moment(new Date(startDate)),
        endMom   = moment(new Date(endDate)),
        res = [];
    for(let cursor = startMom; cursor.isSameOrBefore(endMom); cursor.add(1, 'd')){
        if(cursor.format('dddd').toLowerCase() === weekDay.toLowerCase()){
            res.push(cursor.format('MM/DD/YYYY'));
        }
    }
    return res;
}
const sd = '10/7/2021';
const ed = '10/25/2021'
const wd = 'MONDAY'
console.log(calc(sd, ed, wd));