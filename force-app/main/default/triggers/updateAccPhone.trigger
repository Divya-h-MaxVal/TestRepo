trigger updateAccPhone on Contact (after insert, after update) {
    Map<Id,Contact> mapOfCons = New Map<id,Contact>();
    
    for(Contact c : Trigger.New)
    {
        mapOfCons.put(c.id,c);
    }
    
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert || Trigger.isUpdate)
        {
            
            if(UtilityClass.runOnce == true)
            {
            List<Account> listToUpdate = new List<Account>();
            List<Contact> contacts = [SELECT id,Phone,AccountId,account.Phone FROM Contact where ID IN:mapOfCons.keySet()];
            For(Contact con : contacts)
            {
                  Account a = New Account();
                  a.id = con.accountId;
                  a.Phone = con.Phone;
                  listToUpdate.add(a);
            }
            if(listToUpdate.size()>0)
            update listToUpdate;
            }
        }
    }
}