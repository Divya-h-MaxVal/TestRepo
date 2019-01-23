public class MapDemoController {
    
    @AuraEnabled
    
    public static Map<String,String> getMaps()
    {
        Map<String,String> m = new Map<String,String>();
        m.put('Nike', 'shoes');
        m.put('5Star', 'Chocolate');
        m.put('Amul','Cheese');
        return m;
    }

}