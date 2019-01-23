public class InnerSOQLController {
    
    @AuraEnabled
    public static List<Account> fetchAccounts()
    {
      return  ([SELECT id,Name,BillingCity,(SELECT FirstName,LastName from Contacts) From Account LIMIT 5]);
        
    }

}