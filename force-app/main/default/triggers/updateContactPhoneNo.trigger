trigger updateContactPhoneNo on Account (after insert,after update) {
    Map<id,Account> mapOfAcc = New Map<id,Account>();
    for(Account a : Trigger.New)
    {
        mapOfAcc.put(a.id,a);
    }
    
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert || Trigger.isUpdate)
        {
            UtilityClass.runOnce = false;
            List<Contact> lstToUpdate = new List<Contact>();
            List<Contact> c = [SELECT id,Phone,accountId FROM contact where accountId IN:mapOfAcc.keyset()];
            system.debug('List of conacts: '+c);
            for(Contact con : c)
            {
                Account Acc = mapOfAcc.get(con.accountId);
                String s = Acc.Phone;
                system.debug('account phone no: '+s);
                con.Phone = s;
                lstToUpdate.add(con);
            }
            system.debug('List to update '+lstToUpdate);
            if(lstToUpdate.size()>0)
            upsert lstToUpdate;
        }
        
       
    }
}