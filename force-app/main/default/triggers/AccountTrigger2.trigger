trigger AccountTrigger2 on Account(before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger on Account object');
        // List<Account> newAcc = trigger.new;
        map<id, account> newAcc= trigger.newMap;
        map<id, account> oldAcc= trigger.oldMap;

        for(account acc:trigger.new){
            if(trigger.isInsert && acc.Active__c=='Yes'){
                //just set the field value
                acc.Description='Account is now active. Enjoy!';

            }
        }

        for(account acc:trigger.new){
            if(trigger.isUpdate){
                if(acc.Active__c =='Yes' && oldAcc.get(acc.id).Active__c!=newAcc.get(acc.id).active__c){
                //just set the field value
                acc.Description='Account is now active. Enjoy heeellllloooo fromm update!';
                }
                
            }
        }

    }
}