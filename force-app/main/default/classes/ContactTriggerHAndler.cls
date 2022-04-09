public with sharing class ContactTriggerHAndler {
    public static void ContactUpdateValidation(
        List<Contact> cntTriggerNew,
        List<Contact> cntTriggerOld,
        Map<id, contact> cntTriggerNewMap,
        Map<id, contact> cntTriggerOldMap) {

            for (contact eachContact : cntTriggerNew) {
                if(eachContact.LeadSource == 'Partner Referral'){
                    eachContact.addError('Cannot update Partner Referral contacts');
            }
        }

    }

    public static void ContactUpdateValidation2(
        List<Contact> cntTriggerNew,
        List<Contact> cntTriggerOld,
        Map<id, contact> cntTriggerNewMap,
        Map<id, contact> cntTriggerOldMap) {

            for (contact eachContact : cntTriggerNew) {
                if(eachContact.LeadSource !== cntTriggerOldMap.get(eachContact.id).LeadSource){
                    eachContact.LeadSource.addError(system.label.ContactValidation2);
            }
        }

    }
}
