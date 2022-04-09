global with sharing class SalesforceTicketsBatch implements Database.Batchable<sObject>{
   
   //mndatory start, execute, and finish method
    global Database.QueryLocator start(Database.BatchableContext BC) {
return Database.getQueryLocator([select id,status__c, description__c  from salesforce_ticket__c]);
    }

//execute method will take of sObject whichare querying in start method
globalvoid execute(Database.BatchableContext BC, List<salesforce_ticket__c> scope){
    for(salesforce_ticket__c s:scope){
        s.description__c= s.description__c +'<br/><br/> Updated salesforce tickets via batch';
    }
    update scope;
}
//finiosh method will run after the entire batch is over.
global void finish(database.Batchable bc){
    
}




}
