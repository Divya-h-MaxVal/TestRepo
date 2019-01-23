public class ContactAndLeadSearch {
	public static List<List<sObject>> searchContactsAndLeads(String str)
    
    {
        List<List<sObject>> ex1= [FIND :str IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
    	system.debug(ex1);
        return ex1;
    }
}