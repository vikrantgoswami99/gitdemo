/**
 * Created by vikrant.goswami on 5/22/2021.
 */

public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String mpCode){
        List<Contact> conList = [SELECT Id,Name FROM Contact
                                 WHERE LastName=:lName AND MailingPostalCode=:mpCode];

        return conList;
    }
}