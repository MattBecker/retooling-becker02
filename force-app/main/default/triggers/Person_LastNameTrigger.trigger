trigger Person_LastNameTrigger on Contact (before insert, before update) {
    for (Contact con : Trigger.new) {
        con.LastName_Resolved__c = con.LastName.trim().toLowerCase().capitalize();
    }
}