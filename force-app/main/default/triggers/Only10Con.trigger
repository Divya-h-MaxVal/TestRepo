trigger Only10Con on Contact (before insert,before update) {
    
    Set<Id> s = new Set<Id>();
    
    for(Contact c : Trigger.New)
    {
        if(c.AccountId!=null)
        {
            s.add(c.AccountId);
        }
    }
    
    List<Contact> cc = [Select id from contact where account.id in:s];
    
    if(cc.size()>=10)
    {    for(Contact c : Trigger.New)
        {
        c.addError('10 contacts already exisigtng');
        }
    }

}