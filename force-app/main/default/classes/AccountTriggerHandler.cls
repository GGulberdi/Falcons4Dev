public with sharing class AccountTriggerHandler {
    public static void method1(List<Account> accTriggerNew,
                                 List<Account> accTriggerOld,
                                 map<id,account> accNewMap,
                                 map<id,account> accOldMap){

        for(Account eachAcc:accTriggerNew){
            if(trigger.isInsert && eachAcc.Active__c =='Yes'){
                eachAcc.Description='Account is now active.Enjoy';
            }
            if(trigger.isUpdate){
                system.debug('before update an Account object');
                
                if(eachAcc.Active__c == 'Yes' && accOldMap.get(eachAcc.id).active__c != accNewMap.get(eachAcc.id).active__c){
                    {
                        eachAcc.Description='Account is now active.Enjoy nello from update trigger!!!!' ;
                    }
                }}
        
        
            }


    }
}
