//FIND{salesforce} in NAme fields returning lead(name,phone), account(name,phone)

//sosl returns List<list<sObject>>
// List<List<sObject>> searchList = [find 'salesforce' in all fields returning Account(Name), Contact(Firstname,LAstName, Department)];
// System.debug(searchList);

// List<account> searchAccounts = (account[])searchList[0];
// System.debug('search account - '+searchAccounts); 

// List<contact> searchContacts = (Contact[])searchList[1];
// System.debug('search contact - '+searchContacts);