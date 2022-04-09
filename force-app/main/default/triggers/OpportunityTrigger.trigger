trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    if(trigger.isAfter){
        if(trigger.isInsert){
        for(Opportunity opp: trigger.new){
            system.debug(opp.name +' - '+opp.CloseDate+ ' - '+opp.Amount);
        }
      }
    }

}