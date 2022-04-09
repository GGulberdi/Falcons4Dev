@isTest
public with sharing class SoqlDemoTest {
    @TestSetup
    static void testSetup(){
        account acc1 = new account();
        acc1.Name = 'SI test';
        acc1.Industry = 'Energy';

        account acc2 = new account();
        acc2.Name = 'UI test';
        acc2.Industry = 'Energy';

        account acc3 = new account();
        acc3.Name = 'PI test';
        acc3.Industry = 'Banking';

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
    }
    @isTest
    private static void testMethod1() {
        list<contact> listContact = [select id, name from Contact];
       
        Test.startTest();
        SoqlDemo.childToParent_Soql1();
        test.stopTest();
        system.assert(listContact.size() > 0);
    }

    @isTest
    private static void testMethod2() {
        list<account> listAcc = [select id, name, type from Account];
        for (account acc : listAcc) {
            acc.type = 'Customer - Direct';
        }
        update listAcc;

        list<Opportunity> listOpps = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity op = new Opportunity();
            op.Name = 'Test opp ' + i;
            op.StageName = 'Closed Won';
            op.CloseDate = date.today();
            if(i < 100 ){
                op.AccountId = listAcc[0].id;
            } else if (i < 200) {
                op.AccountId = listAcc[1].id;
            } else if (i < 300) {
                op.accountid = listAcc[2].id;
            }
            listOpps.add(op);
        }
        insert listOpps;

        Test.startTest();
        SoqlDemo.sampleSoql4();
        Test.stopTest();
    }
}