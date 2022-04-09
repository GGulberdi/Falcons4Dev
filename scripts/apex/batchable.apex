// //create new instance of batch class
// SalesforceTicketsBatch batch = new SalesforceTicketsBatch();
// //execute batch apex
// id batchId = Database.executeBatch(stBatch);

// // abother way is to pass how many records we want to process
// id batch2 = database.executeBatch(stBatch, 10);



// // for AccountBatch class

// AccountBatch accb = new AccountBatch();

// id batchId =Database.executeBatch(accb,10);