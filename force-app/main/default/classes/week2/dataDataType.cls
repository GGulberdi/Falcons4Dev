public with sharing class dataDataType {
    public void printBasicDataType() {

date newDate = date.newInstance(1995, 3, 15);

date newDate2 = date.newInstance(2021, 12, 12);

date todaysDate = date.today();


System.debug('first date is: '+newDate);
System.debug('second date is: '+newDate2);
System.debug('todays date is: '+todaysDate);

    }

//time method
public void printNewTime() {

Time newTime = Time.newInstance(18, 20, 2,30);
Time newTime1 = Time.newInstance(15, 5, 2,20);
System.debug('first time is: '+newTime);
System.debug('second time is: '+newTime1);
    }

public void printNewDateAndTime() {

//todays date
date newDate = date.today();

//newTime
time newTime = time.newInstance(11, 10, 20, 30);

//new date and time
datetime newDateAndTime = datetime.newInstance(newDate,newTime);

//new instance with 3param
datetime newDateAndTime1 = datetime.newInstanceGmt(2025, 1, 9);

//new instance with 6param
datetime newDateAndTime2 = datetime.newInstance(2021, 10, 9,10,10,10);

//new instance using long value
long longtime = 1241828183000L;
datetime newDateTimeWithLongValue = datetime.newInstance(longtime);

//new instance using 0
datetime newDateTimeWithZero = datetime.newInstance(0);

//current time
datetime currentTime = datetime.now();


System.debug('new date=>: '+newDate);
System.debug('new  time=> '+newTime);
System.debug('new date and time=> '+newDateAndTime);
System.debug('new instance GMT with 3 parametrs => '+newDateAndTime1);
System.debug('new instance with 6 parametrs=> '+newDateAndTime2);
System.debug('current time=> '+currentTime);
System.debug('new date time with long value=> '+newDateTimeWithLongValue);
System.debug('new date time using  0 in parametrs=> '+newDateTimeWithZero);
    }

    

}
