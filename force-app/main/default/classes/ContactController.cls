public class ContactController {
    
    
    private string o ='';
     List<Contact> c1 = new List<Contact>();
    public ApexPages.StandardSetController stdCntrlr {get; set;}
    
    public ContactController(ApexPages.StandardSetController controller) {
        
        stdCntrlr = controller;
    }
    
  
    public list<contact> getListc()
    {
       
        
        c1=Database.query('SELECT Id, FirstName, LastName, Phone ' +
        'FROM Contact ' +
        'ORDER BY ' + o);
        
        return c1;
    }
    
    public void LastName1()
    {
        this.o='LastName';
    }
    public void FirstName1()
    {
        this.o='FirstName';
    }
}