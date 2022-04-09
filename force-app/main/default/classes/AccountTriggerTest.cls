@isTest
public with sharing class AccountTriggerTest {
    @isTest
    private static void testMethod1() {
        account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        account acc3 = new account();
        acc3.Name = 'PI test';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'Yes';

        list<account> listAcc = new list<Account>{acc1, acc2, acc3};

        insert listAcc;

        for (account acc : listAcc) {
            acc.Active__c = 'Yes';
            acc.Description = 'updated';
        }
        Test.startTest();
        update listAcc;
        Test.stopTest();

        //3 .assert
        list<account> accounts = [select id, name,Description, active__c from account];
        system.assertEquals('Account is now active. ENJOYYYY!', accounts[0].Description);
    }
}