trigger DuplicateRecords on Account (before insert,before update) {
   set<string> s = new set<String>();
    for(account a :trigger.new)
    {
        s.add(a.Name);
    }
    
    List<Account> check = new List<Account>();
    if(trigger.isInsert || trigger.isUpdate)
    {
        check = [select id from account where name in :s];
    }
    
    if(check.size()>0)
    {
        for(account b : trigger.new)
        b.Name.AddError('This account name already exists');
    }

}