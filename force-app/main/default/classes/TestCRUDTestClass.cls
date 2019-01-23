@isTest
public class TestCRUDTestClass {
    
    public static testMethod void doStuffTestMethod(){
        
        
        
        Id profileID1 = [SELECT id from Profile where Name =:'Partner App Subscription User' LIMIT 1].id;
        User u = new User(email='div@gmail.com',
                          profileId= profileID1,
                          UserName = 'testghytr@gmail.com',
                          alias='Test',
                          timezonesidkey='America/Los_Angeles',emailencodingkey='UTF-8',
                          lastname='Testing', languagelocalekey='en_US',
                          localesidkey='en_US',
                          isActive = true
                         );
        
        test.startTest();
        insert u;
        system.runAs(u){
            
        TestCRUD.doStuff('testingCRUDClass',100);
           List<Camping_item__c> i =[SELECT id from camping_item__c where name =:'testingCRUDClass'];
            system.assertEquals(0, i.size());
           
       }
        test.stopTest();
        
        
    }
    
    public static testMethod void doStuffTestMethod2(){
        TestCRUD.doStuff('testingCRUDClass2',100);
        List<Camping_item__c> i =[SELECT id from camping_item__c where name =:'testingCRUDClass2'];
            system.assertEquals(1, i.size());
    }
    
    public static testMethod void doStuffTestMethod3(){
        TestCRUD.doStuff('',100);
        List<Camping_item__c> i =[SELECT id from camping_item__c where name =:''];
            system.assertEquals(0, i.size());
    }
}