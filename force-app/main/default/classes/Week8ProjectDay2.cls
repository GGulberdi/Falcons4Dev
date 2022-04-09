public with sharing class Week8ProjectDay2 implements Database.Batchable<SObject> {

    public Database.QueryLocator start (Database.Batchable BC){

    Database.QueryLocator ql = Database.QueryLocator([Select id, CreatedDate, lastModifiedDate, Status__c from Salesforce_Ticket__c where createdDate Status__c != 'Not Started'])  {
        return ql;
    }

    public void execute (Database.BatchableContext BC, List<Salesforce_Ticket__c> records){
        for (Salesforce_Ticket__c sl :records){
            if(sl.lasModifiedDate == st.CreatedDate){
                st.Status__c='Not Started';
            }
        }
        update records;
    }
    public void finish(Database.BatchableContext BC){
        System.debug('UPDATEDDDDDD')
    }

    
}
