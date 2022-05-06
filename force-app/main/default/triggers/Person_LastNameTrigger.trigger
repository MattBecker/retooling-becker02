trigger Person_LastNameTrigger on Contact (before insert, before update) {
    new PersonTriggerHandler().handle(Trigger.old, Trigger.new, Trigger.operationType);
}