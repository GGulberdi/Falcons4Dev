trigger RollupSummaryForLookup on Contact (after insert, after update, after delete, after undelete ) {
//create a set of ids to store account ids
//account id of all updated/inserted/deleted/ undeleted contact ids
// Set<id> accountIds = new Set<Id>(); 

// if(trigger.isInsert ||trigger.isUpdate||trigger.isUndelete){
//     for(Contact con: trigger.new){
//         if(trigger.isUpdate){
//             //update operation and reparenting happened
//             if(c.AccountId != trigger.oldMap(c.Id).AccountId){
//                 accountIds.add(c.AccountId);//adding new accountId
//                 accountIds.add(trigger.oldMap.get(c.Id).AccountId);//added old accountId
//             }
//         }
//         //for insert and delete collecting account Ids
//         accountIds.add(con.AccountId);
//     }
// }

// if(trigger.isDelete){
//     for(Contact c:trigger.Old){
//         accountIds.add(c.AccountId);
//     }
// }



// }

}