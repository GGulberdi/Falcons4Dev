trigger AccountTrigger on Account (before insert, before update,
after insert, after update) {
    
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.oldMap);
    }

    if (trigger.isBefore) {
        system.debug('before insert/update trigger on account');
        map<id, account> accNewMap = trigger.newMap;
        map<id, account> accOldMap = trigger.oldMap;
        for (account eachAcc : Trigger.new) {
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                eachAcc.Description = 'Account is now active. ENJOYYYY!';
            }
            if(trigger.isUpdate){
                Account newAcc = accNewMap.get(eachAcc.id);
                Account oldAcc = accOldMap.get(eachAcc.Id);
                if(eachAcc.Active__c == 'Yes' && 
                    oldAcc.Active__c != newAcc.Active__c ){
                    eachAcc.Description = 'Account is now active. ENJOYYYY!';
                }
            }
        }
    }
}
    
    /*
    if(trigger.isBefore && trigger.isUpdate){
        map<id, account> accNewMap = trigger.newMap;
        map<id, account> accOldMap = trigger.oldMap;
        integer countWSUpdated = 0;
        for (id eachAccId : trigger.newMap.keySet()) {
            //Account oldAcc = accOldMap.get(eachAccid);
            //string oldWS = oldAcc.Website;
            string oldWS = trigger.oldMap.get(eachAccid).Website;

            Account newAcc = trigger.newMap.get(eachAccId);

            if(oldWS != newAcc.Website){
                system.debug('For Account ' + newAcc.Name + ', new website is ' + newAcc.Website);
                countWSUpdated++;
            }
        }
        system.debug('# of account where website is updated ' + countWSUpdated);
    }*/
    
    
    
    
    /*
    if(trigger.isAfter && trigger.isUpdate){
        map<id, account> accNewMap = Trigger.newMap;
        map<id, account> accOldMap = trigger.oldMap;

        for (id eachId : accNewMap.keySet()) {
            system.debug('accc id = ' + eachId);

            account newAcc = accNewMap.get(eachId);
            account oldAcc = accOldMap.get(eachId);

            system.debug('newAcc name is ' + newAcc.Name);
            system.debug('oldAcc name is ' + oldAcc.Name);
        }
    }
    
    /*map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('=====BEFORE INSERT======');
        system.debug('before insert old map = ' + trgOldMap);
        system.debug('before insert new map = ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('=====AFTER INSERT======');
        system.debug('After insert old map = ' + trgOldMap);
        system.debug('After insert new map = ' + trgNewMap);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('=====BEFORE UPDATE======');
        system.debug('before Update old map = ' + trgOldMap);
        system.debug('before Update new map = ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('=====AFTER UPDATE======');
        system.debug('After Update old map = ' + trgOldMap);
        system.debug('After Update new map = ' + trgNewMap);
    }


    /*
    if(trigger.isAfter){
        if(trigger.isUpdate){
            for (account oldAcc : trigger.old) {
                system.debug('old accid - ' + oldAcc.id + ', Old accName = '+ oldAcc.Name);
            }
            for (account newAcc : trigger.new) {
                system.debug('new accid - ' + newAcc.id + ', new accName = '+ newAcc.Name);
            }
        }
    }*/



    /*if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert trigger.old - ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert trigger.old - ' + trigger.old);
    }

    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update trigger.old - ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger.old - ' + trigger.old);
    }
    
    /*list<account> newAccounts = trigger.new;
    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before createdDate = ' + acc.CreatedDate);
        }
    }  
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger.new after insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before createdDate = ' + acc.CreatedDate);
        }
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before update lastmodifiedDate = ' + acc.LastModifiedDate);
        }
    }       
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('trigger.new update insert - ' + newAccounts);
        for (account acc : newAccounts) {
            system.debug('before update lastmodifiedDate = ' + acc.LastModifiedDate);
        }
    }
        
    
    
    /*List<account> accountNew = trigger.new;
    if(trigger.isAfter){
        system.debug('after trigger : ' + accountNew);
        system.debug('# of account inserted ' + accountNew.size());
    }
    
    /*if(Trigger.isAfter && trigger.isInsert)
        system.debug('after insert trigger called. ');
    
    if (Trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger called. yeah');
    }
    if(Trigger.isAfter && trigger.isUpdate)
        system.debug('after update trigger called. ');
    
    if (Trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger called. yeah');
    }
    
    
    /*
    //print this only while inserting.
    if(trigger.isInsert)
        system.debug('before/after insert trigger.');
    //print this only while updating a record.
    if(Trigger.isUpdate)
        system.debug('before/after udpate trigger.');




    system.debug('trigger executing...');
    if(Trigger.isBefore)
        system.debug('before insert/update trigger.');
    if(Trigger.isAfter)
        system.debug('after insert/update trigger.');
        */
    
//}