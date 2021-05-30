@isTest
public with sharing class TestAccountController {
    @isTest static void testGetAllActiveAccounts(){
        Account acct = new Account(Name='Test Account', Active__c='Yes');
        insert acct;

        List<Account> acctList = AccountController.getAllActiveAccounts();
        System.assertEquals(1, acctList.size());
    }
    
}