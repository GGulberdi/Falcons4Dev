trigger SalesforceProjectTrigger on Salesforce_Project__c (after insert, after update) {
    if (trigger.isAfter) {
        if(trigger.isInsert){
            SalewsforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
            SalewsforceProjectTriggerHandler.updateProjectDescription(trigger.newMap.keySet());
        }
        if(trigger.isUpdate){
            SalewsforceProjectTriggerHandler.spCompletedStatus(trigger.New, trigger.old, Trigger.NewMap, Trigger.OldMap);
        }
        
    }
}