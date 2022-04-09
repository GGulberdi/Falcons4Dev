public with sharing class BillingInfo {

    //method returns date and we use date as a data type 
    //first  parameter gets number - used integer data type
    //second parameter gets data - used date data type 
    public date calcNextBillingDate(integer fr, date dd) {

        // to get next billing date used addMonth() method and passed frequency number
        date getnextBillDate= dd.addMonths(fr);
        return getnextBillDate;     

    }
}
