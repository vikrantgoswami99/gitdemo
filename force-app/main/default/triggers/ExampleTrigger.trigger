/**
 * Created by vikrant.goswami on 5/24/2021.
 */

trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isInsert){
        Integer recordCount = Trigger.New.size();
        //Calling a utility method from another class
        EmailManager.sendMail('vikrant.goswami@accenture.com','Trailhead Trigger Tutorial',
                recordCount+' contact(s) were inserted.');
    }
    else if (Trigger.isDelete) {
        //Process after delete
    }
    

}