public with sharing class Week8PracticeDay implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(Database.BatchableContext opp) {

Database.QueryLocator ql = Database.QueryLocator([Select Id, Name, QueryId, LastModifiedDate from Opportunity WHERE LastModifiedDate != LAST_N_DAYS:3 ]);
return ql;
    }

public void execute(Database.BatchableContext bc, List<Opportunity> records){
    List<Task> taskList=new List<Task>();

    for(Opportunity opp:records){
        Task newTask= new Task();
        newTask.OwnerId = opp.ownerId;
        newTask.Subject ='Notification to act';
        newTask.WhatId= opp.id;

        taskList.add(newTask);
    }

    if(!taskList.isEmpty())
    insert taskList;
}

public void finish(Database.BatchableContext bc){
    System.debug('Execution done');
}


}

//another way to express:
        //String queryString = 'Select Id, Name, OwnerId, CreatedById, LastModifiedDate from Opportunity Where LastModifiedDate != LAST_N_DAYS:3';
        //return Database.getQueryLocator(queryString);
       













