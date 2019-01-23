@isTest
public class DailyLeadProcessorTest {
    public static String exp = '0 0 1 * * ?';
    static testMethod void setup()
    {
        List<Lead> l = new List<Lead>();
        
        for (Integer i = 0; i < 200; i++) {

            l.add(new lead(

                Company='Dream force'+i, LastName='test'+i,Status = 'Open-Not Contacted'));

        }

        insert l;
        
    	
        Test.startTest();
        String jobId = System.schedule('JobName', exp, new DailyLeadProcessor());
        //integer k= [select count() from lead where LeadSource=null and Company like 'LeadTesting%'];
        //System.assert(200,k);
        Test.stopTest();
        integer m= [select count() from lead where LeadSource=null and Company like 'LeadTesting%'];
        system.assertEquals(0,m,'Job hasn\'t run fine');        
    }
    
    
    
}