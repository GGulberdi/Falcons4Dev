trigger ContactTrigger on Contact (after insert, after Update, after delete, after undelete) {
    //Placeholder for collecting all account Ids fow which no of contacts need to be updated
    Set<Id> accountIds = new Set<Id>();//Collect all the account Ids in which number of contacts needs updation
    //Collecting for delete, Insert and Update operation
    if(trigger.isUpdate || trigger.isUnDelete || trigger.isInsert){
        for(Contact c : trigger.new){
            if(trigger.isUpdate){
                //Update operation and reparenting happened
                if(c.AccountId != trigger.OldMap.get(c.Id).AccountId){
                    accountIds.add(c.AccountId);//adding new accountId
                    accountIds.add(trigger.OldMap.get(c.Id).AccountId);//added old accountId
                }
            }
            else
            //for insert and delete collecting account Ids
                accountIds.add(c.AccountId);
        }
    }
    System.debug('accountIds    '+accountIds);
    //for insert and delete collecting account Ids
    if(trigger.isDelete){
        for(Contact c : trigger.Old){
            accountIds.add(c.AccountId);
        }
    }
    //We have all accountIds for which we need to update Number of Contacts Field
    If(!accountIds.isEmpty()){
        List<Account> accWithRelatedContactsList = new List<Account>();
        accWithRelatedContactsList = [Select Id, Number_of_Contacts__c, (Select Id from Contacts) 
                                        from Account Where Id = :accountIds];
        System.debug('accWithRelatedContactsList    '+accWithRelatedContactsList);
        for(Account acc : accWithRelatedContactsList){
            List<contact> contactsList = new List<Contact>();
            contactsList = acc.Contacts;
            acc.Number_of_Contacts__c = contactsList.size();
        }
        Update accWithRelatedContactsList;
    }
}