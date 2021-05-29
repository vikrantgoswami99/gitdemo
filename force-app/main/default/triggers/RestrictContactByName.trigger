trigger RestrictContactByName on Contact (before insert, before update) {
    //check contacts prior to insert or update for invalid data
    for (Contact c : Trigger.New){
        if (c.LastName == 'INVALIDNAME'){
            c.AddError('The Last Name "'+c.LastName+'" is not allowed for DML');
        }
    }

}