public with sharing class SalewsforceProjectTriggerHandler {
    public static void spCompletedStatus(List<salesforce_project__c> sptriggerNew,
    List<salesforce_project__c> sptriggerold,
    Map<id, Salesforce_Project__c> spTriggerNewMap,
    Map<id, Salesforce_Project__c> spTriggerOldMap) {

        set<id> spIds = new set<id>();
        for (salesforce_project__c spRecord : spTriggerNew) {
            if(spRecord.Status__c == 'Completed' && 
            spTriggerOldMap.get(spRecord.id).Status__c != 'Completed'){
                spIds.add(spRecord.Id);
            }
        }

        //check if spIds is not null, then call Future method
        if(!spIds.isEmpty())
            updateTicketStatusCompleted(spIds);
    }

    @future
    public static void updateTicketStatusCompleted(set<id> spIds) {
        List<Salesforce_Ticket__c> listST = [select id, Status__c, salesforce_project__c
        from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and Status__c != 'Completed'];

        for (salesforce_ticket__c stRecord : listST) {
            stRecord.Status__c = 'Completed';
        }
        if(!listST.isEmpty())
            update listST;
    }


    public static void createDefaultSalesforceTicket(List<salesforce_project__c> sptriggerNew) {
        List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c eachSP : sptriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = eachSP.id;
            //insert eachSP; THIS is APEX SIN
            newSTList.add(st);
        }
        if(!newSTList.isEmpty()) insert newSTList;
    }
    @future
    public static void updateProjectDescription(Set<id> setSpId) {
        List<salesforce_project__c> listSP = [select id, description__c 
                                    from Salesforce_Project__c where id in :setSpId];
        for (salesforce_project__c spRecord : listSP) {
            spRecord.Description__c = spRecord.Description__c + '. Updated from Future!';
        }
        
        If(!System.isFuture()){
            update listSP;
        }
    }
}
