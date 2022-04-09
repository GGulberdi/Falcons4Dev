public with sharing class AccountBatch implements Database.Batchable<SObject>, database.stateful, database.allowsCallouts {

    public integer count = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator ql = database.getQueryLocator([select id, active__c, description from account]);
        return ql;
    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
        List<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            if(acc.Active__c != 'No'){
                acc.Description += '... Updated via Batch apex!';
                updateAccounts.add(acc);
                count++;
            }
        }
        if(!updateAccounts.isEmpty())
            update updateAccounts;
    }

    public void finish(Database.BatchableContext BC){
        system.debug('done with updating ALL the accounts.');
        //how many records we actually updated.
        system.debug('# of records updated:  ' + count);
    }

   
}