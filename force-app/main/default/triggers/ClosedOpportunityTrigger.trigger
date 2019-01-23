trigger ClosedOpportunityTrigger on Opportunity (before insert,before update,after insert,after update) {
    
    list<task> t = new list<task>();
    List<Opportunity> opp = [SELECT id,name,StageName from opportunity where id in: Trigger.new];
    
    for(Opportunity opp1:opp)
    {
        if(opp1.StageName=='Closed Won')
        {
            task t1 = new task (Subject='Follow Up Test Task',WhatId=opp1.id);
            t.add(t1);
        }
    }
   insert t;

}