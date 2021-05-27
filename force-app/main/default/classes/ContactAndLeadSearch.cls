/**
 * Created by vikrant.goswami on 5/23/2021.
 */

public with sharing class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String strName){
        List<List<SObject>> retList = [FIND :strName IN NAME FIELDS RETURNING Contact(FirstName,LastName),
                                       Lead(FirstName,LastName)];
        return retList;
    }
}