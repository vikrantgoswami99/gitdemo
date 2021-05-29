    @isTest
    public class CopyBillingAddressTest {

    @isTest static void positiveTest(){
    Account acc = new Account(Name='Professor',Same_As_Billing__c=true,
    BillingCountry='India',BillingStreet='St. Joseph Street',
    BillingCity='Bangalore');
    insert acc;
    System.debug('acc.BillingCountry'+acc.BillingCountry);
    System.debug('acc.ShippingCountry'+acc.ShippingCountry);
    System.assertEquals(acc.BillingCountry,acc.ShippingCountry);
    System.assertEquals(acc.BillingCity, acc.ShippingCity);
    System.assertEquals(acc.BillingStreet, acc.ShippingStreet);
    }
    }



/*
*
@IsTest(SeeAllData=false)
public class Trigger_TestCase {
public static testmethod void myTriggerTestMeth(){
    Account acc1 = new Account();
    acc1.Name='acc1';
    //acc1.Same_As_Billing__c = true;
    acc1.BillingCity ='Chennai' ;
    acc1.BillingCountry='india';
    acc1.BillingPostalCode='600075';
    acc1.BillingState='tamil nadu';
    acc1.BillingStreet='water well street';  
    acc1.ShippingCity=null;
    acc1.ShippingCountry=null;
    acc1.ShippingLatitude=null;
    acc1.ShippingLongitude=null;
    acc1.ShippingPostalCode=null;
    acc1.ShippingState=null;
    acc1.ShippingStreet=null;
    insert acc1;
    acc1.Same_As_Billing__c = true;
    update acc1;
    System.assertEquals(acc1.BillingCountry,acc1.ShippingCountry);
    System.assertEquals(acc1.BillingCity, acc1.ShippingCity);
    System.assertEquals(acc1.BillingStreet, acc1.ShippingStreet);
}
}

*/