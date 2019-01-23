public class TestCustomSettingsController {

    @AuraEnabled
    public static string fetchAddress(String key){
        String returnSring ='';
        URLInfo2__c c2 = URLInfo2__c.getInstance(key);
        returnSring = c2.SiteAddress__c;
        return returnSring;
    }
}