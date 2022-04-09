public with sharing class datetimeMethodsDemo {
    public void calculateAgeInMonth() {

date myDateBirth = date.newInstance(1982, 02, 24);
Date today = date.today();

Integer ageInMounth= myDateBirth.monthsBetween(today);
System.debug('myAgeInMohth :)=>'+ageInMounth);


Integer ageInDays= myDateBirth.daysBetween(today);
System.debug('myAgeInDays :)=>'+ageInDays);

    }
}
