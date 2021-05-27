/**
 * Created by vikrant.goswami on 5/25/2021.
 */

trigger AddRelatedRecord on Account (after insert, after update) {
    List<Opportunity> oppList = new List<Opportunity>();

    //Get the related opportunities for the accounts in this trigger
    Map<Id,Account> acctsWithOpps = new Map<Id, Account>([SELECT Id,(SELECT Id FROM Opportunities) FROM Account
                                    WHERE Id IN :Trigger.new]);

    //Add an Opportunity for each account if it doesn't have already one
    //Iterate through each account
    for(Account a : Trigger.new){
        System.debug('acctsWithOpps.get(a.Id).Opportunities.size()=' + acctsWithOpps.get(a.Id).Opportunities.size());
        //Check if the account already has a related opportunity
        if(acctsWithOpps.get(a.Id).Opportunities.size()==0){
            oppList.add(new Opportunity(Name=a.Name + ' Opportunity',
                    StageName='Prospecting',
                    Discount_Percent__c = 5,
                    CloseDate=System.today().addMonths(1),
                    AccountId=a.Id));
        }
    }
    if(oppList.size() > 0){
        insert oppList;
    }


}