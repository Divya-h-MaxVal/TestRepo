public class PaginationCmpController {

    @AuraEnabled
     	public static AccountWrapper getAccounts(Decimal pageNumber, integer recordToDisplay)
        {
            integer pageSize = recordToDisplay;
            integer offset = ((integer)pageNumber-1)*pageSize;
            
            AccountWrapper aw = new AccountWrapper();
            aw.page = (Integer)pageNumber;
            aw.pageSize = pageSize;
            aw.total = [select count() from account];
            aw.accounts = [select id,name from account order by name LIMIT :recordToDisplay OFFSET :offset];
            return aw;
                      
        }	
    
    public class AccountWrapper{
        
        @AuraEnabled public integer page{get;set;}
        
        @AuraEnabled public integer pageSize{get;set;}
        
        @AuraEnabled public integer total{get;set;}
        
        @AuraEnabled public List<Account> accounts{get;set;}
        
    }
    
}