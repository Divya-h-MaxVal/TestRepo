public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accIds)
    {
       
        List<Account> a = [SELECT Id,Number_of_Contacts__c,(SELECT id from Contacts)from Account where ID=:accIds];
        
           for(Account i :a)   
           {
               List<Contact> c = i.Contacts;
               i.Number_of_Contacts__c = c.size();
           }
        update a;
      
        
    }

}