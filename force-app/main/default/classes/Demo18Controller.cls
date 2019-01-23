public class Demo18Controller {
    
    @AuraEnabled
    public static String pingServer()
    {
        return String.valueOf(System.now());
    }

}