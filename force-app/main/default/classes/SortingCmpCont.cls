public class SortingCmpCont {
    
    @AuraEnabled
    public static List<Contact> fetchContacts(String sortField, boolean isAsc)
    {
        String soql = 'SELECT firstName, lastName, Department, MobilePhone'+'';
        soql += ' FROM contact'+'';
        if(sortField != ''){
            soql += ' ORDER BY ' +''+ sortField+'';
        }
        
        if(isAsc)
        {
            soql += ' ASC';
        }
        
        else
        {
            soql += ' DESC';
        }
        
        soql += ''+' LIMIT 20';
        
        List<Contact> c = new List<Contact>();
        try{
            system.debug('the query is:'+soql);
            c = Database.query(soql);
            List<Contact> result = new List<Contact>();
            for(Contact r : c)
            {
                if(r!=null)
                {
                    result.add(r);
                }
            }
            return result;
        }
        
        catch(exception e){
            return null;
            
        }
      
    }

}