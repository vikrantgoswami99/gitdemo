trigger CopyBillingAddress on Account (before insert, before update) {

    for(Account a: Trigger.New){
        if(	a.Same_As_Billing__c==true){

            a.ShippingCountry = a.BillingCountry;
            a.ShippingStreet = a.BillingStreet;
            a.ShippingCity = a.BillingCity;
            
        }
    }

}