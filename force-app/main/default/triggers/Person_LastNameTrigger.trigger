trigger Person_LastNameTrigger on Contact (before insert) {
    for (Contact con : Trigger.new) {
        con.LastName_Resolved__c = con.LastName.toLowerCase();
    }
}