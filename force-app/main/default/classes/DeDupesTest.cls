@isTest
public class DeDupesTest {

    static testMethod void checktrig()
    {
        Contact c = new Contact(lastName='lala',Email='lala@lala.com');
        insert c;
        Lead l = new Lead(Email='lala@lala.com');
        
        try{
        insert l;
        }
        catch(exception e){
            system.debug('error happened');
        }
    }
    
    static testMethod void checktrig2()
    {
        Contact c = new Contact(lastName='lala',Email='lala@lala.com');
        insert c;
        Lead l = new Lead(Email='lala2@lala.com');
        insert l;
    }
}