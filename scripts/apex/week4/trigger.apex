// Account acc = new account();
// //2. set fields
// acc.name = 'test acc trigger with trigger.new';
// //3.DML
// insert acc;

// list<account> acc2 = [select id, name from account 
// order by createdDate asc limit 5];

// for(account a: acc2){
//     a.Website = 'www.triggerIsEasy.com';
// }
// acc2[0].Website = 'www.triggerrIsEasy.com';
// acc2[1].Website = 'www.triggerrIsEasy.com';
// update acc2;


// List<Opportunity> oppList= new list<Opportunity>();
// for(i=0; i<5;i++){
//     opportunity opp = new Opportunity();
//     Opportunity.name='new opportunity '+i;
//     // Opportunity.closeDate= '2-25-2022';
//     Opportunity.Amount=i*2000;
//     oppList.add(opp);
//     system.debug('opportuniy created');
// }

// opportunity opp = new Opportunity();
// Opportunity.Name='helooooooooooo';
// Opportunity.CloseDate='2-10-2022';
// Opportunity.Stage='Closed Lost';


// insert opp;


//DmlDemo.deleteEverything();
//DmlDemo.dmlMultipleRecordUpdate_right();
// DmlDemo.dmlMultipleRecordInsert_right();
//DmlDemo.dmlMultipleRecordInsert_wrong();
//DmlDemo.dmlUpdateDemo_2_CO();
//DmlDemo.dmlUpdateDemo_2();
//DmlDemo.dmlUpdateDemo_3();
//DmlDemo.dmlUpdateDemo_1();
//DmlDemo.dmlInsertDemo_cstmObj();
//DmlDemo.dmlInsertDemo_stndObj();