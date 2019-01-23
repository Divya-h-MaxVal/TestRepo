trigger OppCheck on Account (after insert,after update) {
    
    
    List<Opportunity> o1 = new List<Opportunity>();
    Map<id,Account> a1 = new map<id,Account>([select id,(select id from opportunities) from account where id in:Trigger.new]);
    // a1=[select id from account where id in:Trigger.new];
    
    for(Account a: Trigger.new )
    {
        if (a1.get(a.id).Opportunities.size() == 0)
        {
            o1.add(new opportunity(Name='Yada Yada', AccountId=a.id));
        }
    }
    
    
    if(o1.size()>0) 
        insert o1;
}