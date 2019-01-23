public class AccountHandler {
public static Account insertNewAccount(String str)
{
    try{
        Account ac=new Account(Name=str);
        insert ac;
        return ac;
    } catch(DMLException e)
    {
        return null;
    }
}
}