public with sharing class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //1. create new instance
        Account acc = new account();
        //2. set fields
        acc.name = 'SoftInnovas';
        acc.Website = 'www.softinnovas.com';
        acc.Active__c = 'Yes';
        //3.DML
        insert acc;
        
    }
    public static void dmlInsertDemo_cstmObj() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach DML to falcons';
        sp.Description__c = 'All 50% are great learners';
        sp.Status__c = 'New';
        insert sp;
    }

    public static void dmlUpdateDemo_1() {
        //1. create new instance
        Account acc = new account();
        //2. set fields
        acc.name = 'SoftInnovas';
        //3.DML
        insert acc;
        system.debug('acc after insert = ' + acc);

        acc.Name = 'Salesforce Inc.';
        update acc;
        system.debug('acc after update = ' + acc);
    }

    public static void dmlUpdateDemo_3() {
        Account acc = [select id, name from account where
                        name = 'SoftInnovas' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        
        update acc;
        system.debug('acc ' + acc);
    }
    //return number of records created.
    //retur id of newly created record
    public static void dmlUpdateDemo_2() {
        Account acc = [Select id, name from Account
        where name = 'SoftInnovas Inc.' limit 1];

        contact ct = new contact();
        ct.LastName = 'Biden';
        ct.AccountId = acc.Id;
        insert ct;
    }
    public static void dmlUpdateDemo_2_CO() {
        //latest project
        Salesforce_Project__c sp = [select id, name 
                from Salesforce_Project__c
                order by createdDate desc limit 1];

        //2 create tickets instance
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn Apex';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2021, 12, 06);
        st.Salesforce_Project__c = sp.id;

        insert st;
        system.debug('st = ' + st);
    }
    public static void dmlMultipleRecordInsert_wrong() {
        Account acc = new account();
        //2. set fields
        acc.name = 'SoftInnovas1';
        acc.Website = 'www.softinnovas1.com';
        acc.Active__c = 'Yes';
        //3.DML
        insert acc;

        for (Integer i = 0; i < 4; i++) {
            //account ant = [select id from account limit 1];

            account acc2 = new account();
            acc2.name = 'SoftInnovas v'+i;
            acc2.Website = 'www.softinnovas'+ i +'.com';
            acc2.Active__c = 'Yes';
            //3.DML
            insert acc2;
            system.debug('acc2 = ' + acc2);
        }
    }

    public static void dmlMultipleRecordInsert_right() {
        List<Account> listAccount = new list<account>();

        Account acc = new account();
        acc.Name = 'SoftInnovas 7Jan v0.0';
        acc.AccountNumber = 'ACSI-1';
        acc.Active__c = 'Yes';
        listAccount.add(acc);

        for (Integer i = 0; i < 4; i++) {
            account acc2 = new account();
            acc2.name = 'SoftInnovas 7Jan v0.0' +i;
            acc2.AccountNumber = 'ASCI-2'+i;
            acc2.Active__c = 'Yes';
            listAccount.add(acc2);
        }
        if(!listAccount.isEmpty())
            insert listAccount;
    }

    public static void dmlMultipleRecordUpdate_right() {
        list<account> listAcc = [Select id, name from account 
        where CreatedDate = today];

        list<account> updateAccounts = new list<account>();
        integer i = 1;
        for (account acc : listAcc) {
            acc.Name = 'SoftInnovas #'+i;
            updateAccounts.add(acc);
            i++;
        }
        system.debug('# of accounts to update: ' + updateAccounts.size());
        if(!updateAccounts.isEmpty())
            update updateAccounts;
    }

    public static void deleteEverything() {
        list<account> listAcc = [Select id, name from account 
        where CreatedDate = today];

        Delete listAcc;
    }
}