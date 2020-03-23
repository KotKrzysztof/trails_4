trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List <Task> taskList = new List<Task>();
    for(Opportunity o: Trigger.New) {
        if(o.StageName == 'Closed Won') {  
            Task t = new Task(
                subject = 'Follow Up Test Task',
                WhatId = o.Id
            );
            taskList.add(t);
        }
    }
    if(taskList.size() > 0) {
        insert taskList;
    }
}