@isTest
private class AccountProcessorTest {
    
    static testMethod void countContactsTest()
    {
        
        Test.startTest();
        List<Id> aid = new List<Id>();
        Account acc = new Account(Name='Test');
        Insert acc;
        Contact c = new Contact(LastName='testName',AccountId=acc.id);
        insert c;
        aid.add(acc.id);
        AccountProcessor.countContacts(aid);
        Test.stopTest();
        System.assert(c.AccountId != null);

        
        
    }

}