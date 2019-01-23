public class RandomContactFactory {
    
    
    public static List<Contact> generateRandomContacts(integer a, String lName)
    {
      List<Contact> c = new List<Contact>();
      for (integer i=0;i<a;i++) 
      {
          Contact c1 = new Contact();
          c1.FirstName = 'Contact'+i;
          c1.LastName = lName;
          c.add(c1);
                   
      }
        return c;
        
    }

}