public class OlderAccountsUtility {

    public static void updateOlderAccounts()
    {
        Account[] acc=[SELECT id, Name,Description FROM Account ORDER BY createdDate LIMIT 5];
        
        for(Account acct:acc)
        {
            acct.Description='Heritage Account';
        }
        
        update acc;
    }
}