 @isTest
public with sharing class AccountTriggerHandlerTest {
    @isTest
    private static void testMethod1() {
        account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';
        acc1.VIP__c = false;

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        account acc3 = new account();
        acc3.Name = 'PI test';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'Yes';

        list<account> listAcc = new list<Account>{acc1, acc2, acc3};

        insert listAcc;

        List<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cnt = new contact();
            cnt.LastName = 'Test soql';
            if (i < 100) {
                cnt.accountid = acc1.id;
            } else if (i < 200) {
                cnt.accountid = acc2.id;
            } else if (i < 300) {
                cnt.accountid = acc3.id;
            }
            listContact.add(cnt);
        }
        insert listContact;



        for (account acc : listAcc) {
          acc.VIP__c = true;
        }
        Test.startTest();
        update listAcc;
        Test.stopTest();

        list<contact> contacts = [select id, vip__c, lastname from contact];
        system.assertEquals(true, contacts[0].VIP__c);
    }

}
