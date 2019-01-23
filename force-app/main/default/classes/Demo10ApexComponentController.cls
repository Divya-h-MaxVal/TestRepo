public with sharing class Demo10ApexComponentController {
    
    @AuraEnabled
    public static List<Account> getAccounts(){
        
        List<Account> l = [Select id,Name from Account LIMIT 10];
        return l;
        
    }
    
    @AuraEnabled
    
    public static List<contact> fetchContacts(String selectedAccId)
    {
        return [SELECT FirstName,LastName, BirthDate,Email from contact where AccountId =:selectedAccId];
    }

}