trigger CopyBillingAddress on Account (before insert, before update) {
    if((trigger.isInsert || trigger.isUpdate)&&trigger.isBefore){
        
        for(Account a: Trigger.New){
            System.debug('Account a ' + a);
            if(	a.Same_As_Billing__c==true){
                System.debug('Same as Billing ');
                
                a.ShippingCountry = a.BillingCountry;
                System.debug(' a.ShippingCountry ' + a.ShippingCountry);
                a.ShippingStreet = a.BillingStreet;
                System.debug(' a.ShippingStreet ' + a.ShippingStreet);
                a.ShippingCity = a.BillingCity;
                System.debug(' a.ShippingCity ' + a.ShippingCity);
                
            }
        }
    }
}