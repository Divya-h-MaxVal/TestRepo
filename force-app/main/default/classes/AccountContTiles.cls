public class AccountContTiles {
	@AuraEnabled
    public static List<Account> fetchAccounts(){
        return [SELECT id,Name from Account where Id  In (select AccountId from Contact) ORDER by Name];
    }
    
    @AuraEnabled
    public static List<Contact> fetchContacts(String name){
        List<Contact> c = [SELECT id,Name,Email from Contact where Account.Name =:name];
        return c;
    }
}