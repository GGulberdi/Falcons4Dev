
public with sharing class AccountQueueableExample implements Queueable {
    public List<Account> accList;
    //parameterized constructor
    public AccountQueueableExample(List<account> accList){
        this.accList=accList;
    }

    // mandatory method
    public void execute(QueueableContext context) {
for(account acc:acclist){
    acc.Name = acc.Name + '--Si';
}
update accList;
    }
}
