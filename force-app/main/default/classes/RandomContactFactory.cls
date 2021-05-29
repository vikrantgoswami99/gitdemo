@isTest
public with sharing class RandomContactFactory {
    public static List<Contact> createContacts(Integer numOfContacts, String conLastName){
        List<Contact> conList = new List<Contact>();

        for(Integer i = 1; i<=numOfContacts; i++){
            Contact c = new Contact(FirstName='Test '+i, LastName=conLastName);
            conList.add(c);
        }

        insert conList;
        return conList;


    }
}
