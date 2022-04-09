public with sharing class SpProjectClass {
    @future
    public static void updateProjectDescription(set<id> setSpId) {
        List<Salesforce_Project__c> lstSp = [select id, description__c from Salesforce_Project__c where id in :setSpId];
        for(salesforce_project__c spRecord:lstSP){
            spRecord.Description__c=spRecord.Description__c +'. Update from Future!';
        }
        update lstSP;

    }
}
