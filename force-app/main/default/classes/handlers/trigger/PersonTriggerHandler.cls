public with sharing class PersonTriggerHandler {
    public void handle(List<Contact> triggerOld, List<Contact> triggerNew, TriggerOperation triggerOp) {
        switch on triggerOp {
            when BEFORE_INSERT, BEFORE_UPDATE{
                setLastNameResolved(triggerNew);
            }
        }
    }

    public void setLastNameResolved(List<Contact> contacts) {
        for (Contact con : contacts) {
            con.LastName_Resolved__c = con.LastName.trim().toLowerCase().capitalize();
        }   
    }
}
