@isTest
private class TestRestrictContactByName {
    
    static testMethod void RestrictContactByNameTriggerTest()
    {
        Contact c = new Contact(LastName='INVALIDNAME');
        insert c;
    }

    
    static testMethod void RestrictContactByNameTriggerTest2()
    {
        Contact c = new Contact(LastName='LASTNAME');
        insert c;
    }
}