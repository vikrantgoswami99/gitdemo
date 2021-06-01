@isTest
public with sharing class AccountAdressTrigger_Test {
    @istest static void acctAddressTestMethod(){
        Account acct = new Account(Name='Test Account', Match_Billing_Address__c=true,
                                    BillingPostalCode='300322', Rating='Hot');
        insert acct;

        System.debug('Billing Postal Code -->' +acct.BillingPostalCode);
        System.debug('Shipping Postal Code -->' +acct.ShippingPostalCode);
        System.assertEquals(acct.BillingPostalCode, acct.ShippingPostalCode,'Shipping Postal Code is not Same as Billing Postal Code');
    }
    
}
