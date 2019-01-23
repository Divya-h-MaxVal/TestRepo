public  with sharing class SearchBarController {

    @AuraEnabled
    public static PagedResult searchBarMethod(string searchKey,decimal minAlc,decimal page)
    {
        string search = '%'+searchKey+'%';
        system.debug('searchkey is'+search);
        PagedResult r = new PagedResult();
        r.products = [SELECT id,name,alcohol__c,Brewery__r.Name,tags__c,image__c from beer__c 
                           where (name like:search or Brewery__r.Name like:search or tags__c like :search) and Alcohol__c >= :minAlc limit 12];
        system.debug('b is '+r.products);
    return r;
    }
    
}