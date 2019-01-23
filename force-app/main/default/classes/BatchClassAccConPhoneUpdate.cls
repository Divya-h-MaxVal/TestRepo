global class BatchClassAccConPhoneUpdate implements Database.Batchable<sObject> {
	
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
       String query = 'SELECT id,Phone FROM Account';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc,List<Account> accList)
    {
        for(Account a : accList)
        {
            a.Phone = a.Phone +'1';
        }
        try
        {
            update accList;
        }
        catch(Exception e)
        {
            system.debug(e);
        }
    }
    
    global void finish(Database.BatchableContext bc)
    {
        
    }
}