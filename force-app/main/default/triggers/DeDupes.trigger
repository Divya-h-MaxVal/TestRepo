trigger DeDupes on Lead (before insert,before update) {
    
    Set<string> em = new Set<string>();
    List<Contact> c =[select id from contact where email in :em];

    for(Lead l : Trigger.new)  
    {
        if(Trigger.isBefore)
        {
            if(Trigger.isInsert || Trigger.isUpdate)
            {
                em.add(l.Email);
            }
        }
        
        
        if(c.size()>0)
        {
            l.Email.addError('already exists');
        }
    }

}