account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';
        // acc1.VIP__c = false;

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        // required field is missing
        account acc12x= new account();
        account acc12y= new account();

        List<Account> acc = new List<Account>{acc1,acc2,acc12x,acc12y};
        List<Database.SaveResult> result = Database.insert(acc, false);

        //iterate SaveResult
        for(Database.SaveResult eachresult:result){
            if(eachresult.isSuccess()){
                system.debug('Account successfully inserted, Account id is:' + eachresult.getId());
            }else{
                system.debug('Errors:' + eachresult.getErrors());

            }
        }
