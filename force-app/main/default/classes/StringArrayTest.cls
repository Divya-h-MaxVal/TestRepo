public class StringArrayTest {

    
    public static List<string> generateStringArray(integer n)
    {
        List<string> la= new List<string>();
        for(integer i=0;i<n;i++)
        {
            String k= 'Test'+i;
            system.debug(k);
            la.add(k);
        }
        
        return la;
    }
}