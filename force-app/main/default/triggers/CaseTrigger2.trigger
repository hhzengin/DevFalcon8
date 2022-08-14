trigger CaseTrigger2 on Case (before insert, before update) {
    if(trigger.isInsert){
        system.debug('before insert case trigger called');
            system.debug('trigger size is ===> ' + trigger.size);
    }
    if(trigger.isUpdate){
        system.debug('before update case trigger called');
        system.debug('trigger size is ==>>> ' + trigger.size);   
        CaseTriggerHandler.countRecordsUpdate += trigger.size;
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger executed: ' + CaseTriggerHandler.countTriggerExecution);
        system.debug('# of total records updated: ' + CaseTriggerHandler.countRecordsUpdate);
    }
}