public with sharing class SoqlDemo {
    public static void accountSOQL_1() {
        List<account> listAcc = [Select Id, Name
                                From Account 
                                where Name like '%A%'];
        System.debug('account list = ' + listAcc);

        account acc = [Select Id, Name
                        From Account ORDER BY CreatedDate desc limit 1];
        system.debug('latest account created is ' + acc);
    }

    public static void accountSOQL_2() {
        account acc = [Select Id, Name, phone, AccountNumber
                        From Account ORDER BY CreatedDate desc limit 1];
        system.debug('latest account created is ' + acc);
        string accName = acc.Name;
        string accPHone = acc.Phone;
        system.debug('accName = ' + accName + ', phone is ' + accPHone);
        system.debug('account number is ' + acc.AccountNumber);
    }
    public static void accountSOQL_3() {
        list<account> listAcc = [Select Id, Name, phone, AccountNumber
                        From Account ORDER BY CreatedDate desc];
        system.debug('latest account created is ' + listAcc);
        for (account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPHone = eachAccount.Phone;
            system.debug('accName = ' + accName + ', phone is ' + accPHone);
            system.debug('account number is ' + eachAccount.AccountNumber);    
        }
        
    }
    public static void childToParent_Soql1() {
        list<contact> listCnt = [select id, name, account.name from Contact
                                where account.industry = 'Energy'];
        for (contact eachContact : listCnt) {
            string accName = eachContact.account.Name;
            system.debug('contact name is ' + eachContact.Name + ', its acc is '+accName);

        }
    }
    public static void sampleSoql4() {
        List<Account> accountWithOppList = [Select name, annualRevenue,
        (select name, amount from opportunities where stageName = 'Closed Won'),
        (select lastname from Contacts)
        From Account where type = 'Customer - Direct'];

        for(account soqlAcc: accountWithOppList){
            system.debug('Account name: ' + soqlAcc.Name + ' its revenue -> ' + soqlAcc.AnnualRevenue);
            List<Opportunity> listOpp = soqlAcc.Opportunities;
            //system.debug('# of opps : ' + listOpp.size());
            integer countOpp = 0;
            for (opportunity opp : listOpp) {
                system.debug('opp name ' + opp.Name);
                system.debug('opp amount ' + opp.Amount);
                countOpp++;
            }
            system.debug('opp count = ' + countOpp);
        }
    }

    public static void soqlDemo5() {
        List<salesforce_project__c> listSP = [Select Id, Name, 
        project_name__c, 
        ( select Name, subject__c, priority__c from Salesforce_Tickets__r ) 
        FROM salesforce_project__c];
        //Project ID : SP-1001 - Total # ST: 2 and High Priotity ST : 1
        integer totalHighPriorityST = 0;
        integer totalST = 0;
        for (salesforce_project__c eachSP : listSP) {
            List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
            string spName = eachSP.Name;
            //project specific
            totalST = listST.size();
            integer highPriorityST = 0;
            for (salesforce_ticket__c eachST : listST) {
                if(eachSt.Priority__c == 'High'){
                    highPriorityST++;
                    totalHighPriorityST++;
                }
            }
            system.debug('Project ID: ' + spName + ', Total # ST: ' + totalST + ', high priority ST: ' + highPriorityST);
        }
        
        system.debug('total high priority tickets in the org ' + totalHighPriorityST );
    }
}