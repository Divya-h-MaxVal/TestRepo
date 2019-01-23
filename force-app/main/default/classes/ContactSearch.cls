public class ContactSearch {

    
    public static List<Contact> searchForContacts(String str, String str1)
    {
        
        List<Contact> ct= [SELECT ID,Name FROM Contact WHERE LastName=:str AND MailingPostalCode=:str1];
    	return ct;
    }
    
    
}