@isTest
public with sharing class AccountAdressTrigger_Test {
    @istest static void acctAddressTestMethod(){
        Account acct = new Account(Name='Test Account', Match_Billing_Address__c=true,
                                    BillingPostalCode='300322', Rating='Hot');
        insert acct;

        System.assertEquals(acct.BillingPostalCode, acct.ShippingPostalCode);
    }
    
}
