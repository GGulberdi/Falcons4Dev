@isTest
public with sharing class AccountQueueableExampleTest {
    @isTest
    static void setup() {
        List<Account> accList = new List<Account>();

        for(Integer i=0; i<100; i++){
            accList.add(new Account(name='Test Account '+i)
            );

        }
        insert accList;

    }
private static void testQueueable(){
    List<Account> accounts= [select Id, name from account where name like 'Test Account%'];
    AccountQueueableExample acq = new AccountQueueableExample(accounts);
    Test.startTest();
    system.enqueueJob(acq);
    Test.stopTest();


//assert
integer count =[select count() from account where Name like '%SI%'];
System.assertEquals(100,count);


}

}
