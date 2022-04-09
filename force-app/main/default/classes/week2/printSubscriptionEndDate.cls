public with sharing class printSubscriptionEndDate {

    public void printSubscriptionEndDate() {

//today`s date

date subscriptionStartDate = date.today();

//sub. end date

date subscriptionEndDate = subscriptionStartDate.addDays(1000);
System.debug('subscription end date' +subscriptionEndDate);

// print year and month
Integer endDateYear = subscriptionEndDate.year();
System.debug('subscription end date year is  ' +endDateYear);

Integer endDateMonth = subscriptionEndDate.month();
System.debug('subscription end date month is  ' +endDateMonth);

    }


    public void printSubscriptionStartDate() {

        //today`s date
        
        date subscriptionStartDate = date.today();
        
        //sub. end date
        
        date subscriptionEndDate = subscriptionStartDate.addDays(-1000);
        System.debug('subscription start date' +subscriptionEndDate);
        
        // print year and month
        Integer endDateYear = subscriptionEndDate.year();
        System.debug('subscription start date year is  ' +endDateYear);
        
        Integer endDateMonth = subscriptionEndDate.month();
        System.debug('subscription start date month is  ' +endDateMonth);
        
            }

            
    public void offerEndDateDateTime() {

        //current time
        
        datetime dtNow = datetime.now();
        
        //calculate datetime after 51 hours
        
        datetime dtOfferEnd = dtNow.addHours(51);
        System.debug('offer will end  ' +dtOfferEnd);
        
        // print 'data' component of the offer end date
        date offerEndDate = dtOfferEnd.date();
        System.debug('Offer end Date  ' +offerEndDate);
        
        // data endDateMonth = subscriptionEndDate.month();
        // System.debug('subscription start date month is  ' +endDateMonth);
        
            }

            public void offerEndDateDateTime2() {

                //current time
                
                datetime dtNow = datetime.now();
                
                //calculate datetime after 51 hours
                
                datetime dtOfferEnd = dtNow.addHours(51);
                System.debug('offer will end  ' +dtOfferEnd);
                
                // print 'data' component of the offer end date
                date offerEndDate = dtOfferEnd.date();
                System.debug('Offer end Date  ' +offerEndDate);
                
                // data endDateMonth = subscriptionEndDate.month();
                // System.debug('subscription start date month is  ' +endDateMonth);
                
                    }




}
