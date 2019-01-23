trigger FavColorTrigger on Account (before insert) {
    
    map<id,String> m = new Map<id,string>();
    Set<id> i = new Set<id>();
    for (Account a : Trigger.new)
    {
        
        i.add(a.OwnerId);
    }
    
    List<User> u = [Select id,Fav_Color__c from user where id in: i];
    
    for(User us : u)
    {
        m.put(us.id,us.Fav_Color__c);
    }

    for(Account a : trigger.new)
    {
        if(m.containsKey(a.OwnerId))
        {
            a.Fav_Color__c = m.get(a.OwnerId);
        }
    }
    
}