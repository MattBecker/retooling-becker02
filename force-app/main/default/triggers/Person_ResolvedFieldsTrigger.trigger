trigger Person_ResolvedFieldsTrigger on Contact (before insert, before update) {
    for (Contact con : Trigger.new) {
        String firstNameResolved = '';
        for (String str : con.FirstName.split('\\s+')) {
            firstNameResolved += ' ' + str.tolowercase().capitalize(); 
        }
        con.FirstName_Resolved__c = firstNameResolved.trim();
    }
}