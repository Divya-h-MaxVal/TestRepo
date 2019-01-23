public class VfExController {
    
    public boolean editsection{get;set;}
    public account acc{get;set;}
    

    public VfExController(ApexPages.StandardController controller){
         acc =  [SELECT Name,Phone,type FROM Account where Name =:'RestTest' LIMIT 1];
        
    }
    
    public PageReference EdittheSection()
    {
        editsection=true;
        return null;
    }
    
    public PageReference Save(){
        editsection = false;
        update acc;
        return null;
    }
}