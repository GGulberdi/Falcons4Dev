@isTest
public with sharing class AccountBatchTest {
    @isTest
    private static void testMethod1() {
        account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';
        // acc1.VIP__c = false;

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        list<account> listAcc = new list<Account>{acc1, acc2};

        for (Integer i = 0; i < 900; i++) {       
            account acc3 = new account();
            acc3.Name = 'PI test';
            acc3.Industry = 'Banking';
            acc3.Active__c = 'Yes';
            listAcc.add(acc3);
        }

        insert listAcc;

        Test.startTest();
        Database.executeBatch(new AccountBatch(),905);
        Test.stopTest();

        List<account> accounts = [select id, description from account where Active__c != 'No' limit 100];
        for (account acc : accounts) {
            system.assert(acc.Description.containsIgnoreCase('batch'));
        }
    }
}