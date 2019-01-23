public class SelectListController {
    
    @AuraEnabled
    public static List<Account> getAccounts()
    {
        return [SELECT id,Name from Account LIMIT 100];
    }

}