public with sharing class BookSearchController {
    
    @AuraEnabled
    public static List<Book__c> searchMethod(String searchKey)
    {
        //String search1 = searchKey;
        String searchWord = searchKey + '%';
        List<Book__c> booksList = [SELECT id,Name,PicturePath__c from Book__c where Name LIKE :searchWord];
        return booksList;
        
        
        
    }

}