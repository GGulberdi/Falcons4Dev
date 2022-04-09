@isTest
public with sharing class DmlDemoTest {
    @isTest
    static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();
        List<Account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        account acc = listAcc[0]; 
        system.assertEquals('SoftInnovas', acc.Name);
    }
    @isTest
    private static void dmlDemoTest2() {
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();

        list<contact> listContact = [select id, lastname from contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].LastName);
    }
    @isTest
    private static void dmlDemoTest3() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach TEST to falcons';
        sp.Description__c = 'Still, All 50% are great learners';
        sp.Status__c = 'New';
        insert sp;

        DmlDemo.dmlUpdateDemo_2_CO();

        //3. Assert
        List<Salesforce_Ticket__c> st = [select id, subject__c, 
                                        salesforce_project__c,
                                        priority__c from Salesforce_Ticket__c
                                        where Subject__c = 'Learn Apex'];
        system.assertEquals(1, st.size());
        system.assertEquals(sp.Id, st[0].Salesforce_Project__c);
    }
}












