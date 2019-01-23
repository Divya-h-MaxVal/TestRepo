public with sharing class ProductSearchController 
{
    @AuraEnabled
    public static List<wrapperComboBox> searchProduct(string searchWord){
        List<wrapperComboBox> returnList = new List<wrapperComboBox>();
        searchWord = searchWord + '%';
        List<ProductNew__c> rList = [SELECT id, Name from ProductNew__c WHERE Name LIKE:searchWord];
        for(ProductNew__c p : rList){
            wrapperComboBox wc = new wrapperComboBox();
            wc.label = p.Name;
            wc.value = p.id;
            returnList.add(wc);
        }
        return returnList;
    }
    
    @AuraEnabled
    public static List<wrapperPill> getSelectedProd(List<String> prodIds){
        List<wrapperPill> wp = new List<wrapperPill>();
        List<ProductNew__c> lst = [select id, name from productNew__C where id in:prodIds];
        for(ProductNew__c p: lst){
            wrapperPill wp1 = new wrapperPill();
            wp1.label = p.Name;
            wp1.name = p.id;
            wp1.fallbackIconName = 'standard:user';
            wp1.type='avatar';
            wp1.variant='circle';
            wp1.alternativeText = p.id;
            wp.add(wp1);
        }
        return wp;
    }
    
    public class wrapperPill
    {
        @AuraEnabled
        public string type{get;set;}
        @AuraEnabled
        public string label{get;set;}
        @AuraEnabled
        public string name{get;set;}
        @AuraEnabled
        public string fallbackIconName{get;set;}
        @AuraEnabled
        public string variant{get;set;}
        @AuraEnabled
        public string alternativeText{get;set;}
    }
    
    public class wrapperComboBox
    {
        @AuraEnabled
        public string label{get;set;}
        @AuraEnabled
        public String value{get;set;}
        @AuraEnabled 
        public boolean isSelected{get;set;}
    }
}