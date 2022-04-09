
//week 5 Sunday project

public with sharing class AccConAndOppOperations {
    //1. Write the logic to fetch and return all the accounts. Include account name, annual 
    //revenue, type and source of account.
    public static List<Account> returnAccounts() {
        List<Account> acc = new List<Account>([Select name, AnnualRevenue,Type,AccountSource from Account]);
        system.debug('Account ' +acc);
        return acc;
    }

    //2.Prepare a method which will return the List of Accounts (At least 3 fields) for a particular 
    //Type. Type should be sent as a parameter in the method.
    public static List<Account> returnParticular(String type1) {
        List<Account> acc = new List<Account>([Select name, AnnualRevenue,AccountSource from Account where type= :type1]);
        system.debug('Account type with ' + type1 + 'list '+acc);
        return acc;
    }
    //3.Print all the opportunities (Amount, Name and Account Name) with Stage as 'Closed 
    //Won' and make it dynamic so that it should work for other stages as well.
    
    public static void printOpportunities(string oppStage) {
        List<Opportunity> acc = [Select id, amount, name, Account.Name, StageName from Opportunity where StageName= :oppStage];
        for(Opportunity opp : acc){
            string accName =opp.Account.Name;
            decimal amountt=opp.Amount;
            string oppName=opp.Name;
            string stagename=opp.StageName;
            System.debug('Opp name is=> '+oppName+ ',opp Stage name=> '+stagename+ ', Amount=>'+ amountt+', Account name=> '+accName);
        }
        integer tt= acc.size();
        system.debug('Total Opportunity with'+ oppStage+ ' Opportunity stage is =>' + tt);
    }

    //4. Find all the opportunities which has Lead Source as 'Web' and Stage
    //as 'Closed Lost'. Make it dynamic so that it works for other stages and Lead sources as well.
    public static List<Opportunity> oppWithLeadSource(String sourse) {
        List<Opportunity> acc = new List<Opportunity>([Select id, name, LeadSource from Opportunity where LeadSource= :sourse]);
        for(Opportunity eachacc:acc){
        system.debug('Opp with Lead Source ' + eachacc.LeadSource + ',Opp name '+eachacc.name);
        }
       system.debug('Total opp with Lead Source '+sourse+' is => ' +acc.size());
        return acc;
    }


    //5. Prepare a method which returns the sum of all the opportunities Amount present in the org.
    public static Decimal oppAmountSum() {
        List<Opportunity> acc = new List<Opportunity>([Select id, Amount from Opportunity]);
        Decimal allAmount= 0;
        for(Opportunity eachopp:acc){
            allAmount = allAmount+eachopp.Amount;
        system.debug(eachopp.Amount);
        }
        system.debug('Total of all Opportunyty Amount=>' + allAmount);
        return allAmount;
    }


    //6. Write a method which should return the account instance after adding a new Account in 
    //salesforce org. Take Name, AnnualRevenue, Type as parameters and populate the values in 
    //account record. If Name is not provided, then do not create the account and show a 
    //message like Account without name can not be created.
    //version 1 with list return
    public static List<Account> createAnAccount1(string nameP, Decimal AnnualRevenueP, string TypeP) {
        List<Account> accList = new List<Account>();
        Account newAcc= new Account();
        newAcc.name=nameP;
        newAcc.AnnualRevenue=AnnualRevenueP;
        newAcc.Type=TypeP;
        accList.add(newAcc);
        insert accList;
        system.debug(accList);
        return accList;
    }
    //version 2 with return Account record
    public static Account createAnAccount2(string nameP, Decimal AnnualRevenueP, string TypeP) {
        // List<Account> accList = new List<Account>();
        Account newAcc= new Account();
        newAcc.name=nameP;
        newAcc.AnnualRevenue=AnnualRevenueP;
        newAcc.Type=TypeP;
        insert newAcc;
        system.debug(newAcc);
        return newAcc;
    }


    //7. Take account Id as input parameter and create a new contact for the provided account’s 
    //Id. Populate Contact last name as same as Account’s Name.
    public static void createContactWithAccountName(string idP) {

        Account getAccount =[Select id, name from Account where id=:idP];
        system.debug(getAccount);
        Contact newContact = new Contact();
        newContact.AccountId= getAccount.id;
        newContact.firstName=getAccount.name;
        newContact.lastName=getAccount.name;
        insert newContact;
        system.debug('New Contact=>'+ newContact);
    }

    //8. Update the description field of top 10 opportunities as "This is one of the top 10 
    //opportunity. Please work on this properly“.
public static void updateTop10() {
        List<Opportunity> getOpp = new List<Opportunity>([Select id, name,
        description, Amount from Opportunity ORDER by Amount Desc limit 10]);
        integer count =0;
        for (Opportunity eachOpp : getOpp) {
            eachOpp.Description='UPDATED AT WEEK 5';
            count++;
            system.debug('Top '+ count+ '. Amount is=> ' +eachOpp.Amount+' Opp Name=>'+eachOpp.name + '.Updated Description is => '+eachOpp.Description);
        }
        update getOpp;
    }

    // 9. Write a logic to create and return n number of opportunities for a particular accountId. 
    // AccountId and n will be passed as parameters in the method. Populate opportunity close 
    // date as as 3 years from today, Stage name as Prospecting, Opportunity amount as 
    // Account’s annual revenue divided by n and Opportunity name same as Account name.
    // For Ex: if n=2, Then two new opportunities
    // If n=0, Print the message as “Please tell us how many opportunities needs to be created”
    public static List<Opportunity> createNnumberOpp(string accID, integer n) {
        Account getacc = [Select id, name,AnnualRevenue from Account where id = :accID];
        System.debug(getacc);
        List<Opportunity> newOpp = new List<Opportunity>();
        Date newDate = System.today().addYears(3);
        for (integer i=1; i<=n;i++) {
        Opportunity opp = new Opportunity();
            opp.AccountId=accID;
            opp.Name= getacc.name + ' ' +i;
            opp.StageName='Prospecting';
            opp.Amount=getacc.AnnualRevenue/2;
            opp.CloseDate=newDate;
            newOpp.add(opp);
            System.debug('Name=> '+opp.Name + 'Stage=> '+opp.StageName+ 'and Ammuval Revenue is=> '+opp.Amount);
        }
              insert newOpp;
        return newOpp;
    }





    // 10. Delete all the opportunities which have amount less than 20000 and status as closed 
    // lost.

    public static void deleteAllOpportunities(){
        List<Opportunity> listopp= [Select id, StageName, name, amount from Opportunity where amount<=20000 and stageName ='Closed Lost'];
        system.debug('Queried data '+listopp);
        delete listopp;
    }

    // 11. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and 
    // print the Opportunity Name and Amount for the respective 'Closed Won' opportunities. 
    // Printing should be done one by one in different lines.

    public static void printOppAndAccounts(){
        List<Account> listacc= new List<Account>([Select id, name,type, AnnualRevenue from Account where type ='Customer - Direct']);
        List<Opportunity> listopp= new List<Opportunity>([Select id, name,Amount, stageName from Opportunity where stageName ='Closed Won']);
                for(Account eachacc:listacc){
        system.debug('Acc name=> '+eachacc.name+ '.Annual Revenue=> '+eachacc.AnnualRevenue+ ' and type is=> '+ eachacc.type);
        }
                for(Opportunity eachopp:listopp){
         system.debug('Opp name=> '+eachopp.name+' , amount=> '+eachopp.Amount+ ' and Stage=> '+eachopp.StageName);
       }
   }

   //12. Find out all the Account which have no contacts attached to them. Add a contact for each 
   //one of them and update the last Name of contact with the Name field of account.
//    public static void addContactToAccount(){
//     List<Account> acclist= new List<Account>([select id, name,(select name,firstName,lastname from contacts) from Account]);

//     List<Account> newacc= new List<Account>();
//         for(Account eachAcc : acclist){
//         integer count = eachAcc.Contacts.size();
//            if(count <= 0){
//          Contact newcon=new Contact();
//          newcon.name=eachAcc.id;
//          newcon.firstName=eachAcc.Contacts.lastname;
//          newcon.lastName=eachAcc.lastname;
//             newacc.add(newcon);
//             System.debug('new Contact=> '+newcon);
            
//           }
//         }
//     }




   //13. Prepare a method which will return all the Accounts for which at least a contact is present.
   public static List<Account> allAccountsWithContact(){
    List<Account> acclist= [select id, name,(select lastname from contacts) from Account];

    List<Account> acc= new List<Account>();
    for(Account eachAcc : acclist){
        integer count = eachAcc.Contacts.size();
           if(count > 0){
               acc.add(eachAcc);
            System.debug(eachAcc.name +' has '+ count+ ' accounts.');
          }
        }
        return acc;
    }

    //14. Prepare a method which will return all the Accounts for which at least a closed Won 
    //Opportunity is present. Make it dynamic if we want to bring account for other opportunity stageNames.

    public static List<Account> allAccountClosedWonOpp(string stageP){
        List<Account> acclist= [select id, name,(select name, stageName from Opportunities where StageName = :stageP) from Account];
    
        List<Account> acc= new List<Account>();
              for(Account eachAcc : acclist){
            integer count = eachAcc.Opportunities.size();
                if(count >0){
                    acc.add(eachAcc);
                 System.debug(eachAcc.name+' with '+ eachAcc.Opportunities);
                }
              }
            return acc;
        }



      //  15. Delete all the contacts which have no accounts attached to them

      public static void deleteAccountsWithNoContact(){
        List<Account> acclist=[select id, name,(select lastname from contacts) from Account];
        system.debug('Total Accounts before delete =>'+ acclist.size());
            integer totaldeleted=1;
        for(Account eachAcc : acclist){
            integer count = eachAcc.Contacts.size();
               if(count <= 0){
                Delete eachAcc;
                System.debug('Account deleted');
                totaldeleted++;
              }
            }
            System.debug('Total deleted accounts=>'+ totaldeleted);
        }

}
