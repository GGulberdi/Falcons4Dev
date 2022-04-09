// creat new object
BillingInfo bbi = new BillingInfo();
// pass date value to bday variable
date bday = date.newInstance(2021, 12, 16);
// send values to the method 
date nextDate = bbi.calcNextBillingDate(6,bday);
// print result 
System.debug('next Billing date is  ' +nextDate);