trigger CaseTrigger on Case (before insert, before update, after insert, after update) {

    System.debug('We are in the triggers');

    if(trigger.isBefore) {
        System.debug('We are in the before triggers');
        if(trigger.isInsert){
            System.debug('We are in the before-insert triggers');
         }
        if(trigger.isUpdate){
            System.debug('We are in the before-update triggers');
            // System.debug('Case# '+ cc[0].caseNumber +' id '+cc[0].id+' was created on '+cc[0].CreatedDate);
        }
     }

     if(trigger.isAfter){
            System.debug('We are in the after triggers');
         if(trigger.isInsert){
        System.debug('We are in the after-insert triggers');
        // System.debug('Case# '+ cc[0].CaseNumber+' id '+cc[0].id+' was created on '+cc[0].CreatedDate);
        
         }
         if(trigger.isUpdate){
            System.debug('We are in the after-update triggers');
            // System.debug('Case# '+ cc[0].CaseNumber+' id '+cc[0].id+' was created on '+cc[0].CreatedDate);

        }
     }

     for(case eachcc: trigger.new){
         if(eachcc.id !=null){
            System.debug('Case# '+ eachcc.CaseNumber+' id '+eachcc.id+' was created on '+eachcc.CreatedDate);
         }
     }
}