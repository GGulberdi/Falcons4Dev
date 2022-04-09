trigger ContactTriggerNew on Contact (before insert, after insert, before update, after update) {

    if(trigger.isBefore && trigger.isUpdate){

        ContactTriggerHAndler.ContactUpdateValidation(trigger.New, trigger.old, trigger.newMap, trigger.oldMap);

    }

}