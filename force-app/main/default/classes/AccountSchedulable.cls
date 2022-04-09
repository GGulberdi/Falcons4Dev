public with sharing class AccountSchedulable implements Schedulable {
    public void execute (SchedulableContext Sc) {
        Database.executeBatch(new accountBatch());

    }
}


