public with sharing class accountfiltercon {
    Public string selectedname{get;set;}
    public integer total {get;set;}
    //public GoMart__c tracker {get;set;}
    
     public accountfiltercon(ApexPages.StandardController stdcnt)
        {
            total=0;
        } 
         public string errorMessage{get;set;}
        Public List<Selectoption> getselectedaccnamefields(){
           List<Selectoption> lstnamesel = new List<selectoption>();
            lstnamesel.add(new selectOption('', '- None -'));
            for(Things__c thang :[SELECT id,Name FROM Things__c]){
            lstnamesel.add(new selectoption(thang.id,thang.name));
            }
            return lstnamesel; 
                    
        }
     
    
   
  /*  public void increment()
    {
        
    }*/
    
  
}