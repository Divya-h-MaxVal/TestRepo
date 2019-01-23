trigger UserNTenCon on Contact (before insert) {
    
    list<Contact> con  = [select id from contact where createdDate = today AND CreatedById = :UserInfo.getUserId()];
    
    Set<Id> s = new Set<Id>();
    
    for(Contact c : Trigger.New)
    {
        if(c.AccountId!=null)
        {
            s.add(c.AccountId);
        }
    }
    
    List<Contact> cc = [Select id from contact where account.id in:s];
    if(con.size()>30)
    {
        for(Contact c : Trigger.New)
        {
        c.addError('Daily Limit Reached');
        }
    }
    else if(cc.size()>=10)
    {    for(Contact c : Trigger.New)
        {
        c.addError('10 contacts already exisigtng');
        }
    }

    

}