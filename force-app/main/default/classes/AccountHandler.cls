/**
 * Created by vikrant.goswami on 5/22/2021.
 */

public class AccountHandler {
    public static Account insertNewAccount(String accName){
        try{
            Account acct = new Account(Name=accName);
            insert acct;
            return acct;
        }
        catch (DmlException e){
            return null;
        }


    }
}