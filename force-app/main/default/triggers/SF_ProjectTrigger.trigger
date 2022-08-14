trigger SF_ProjectTrigger on Salesforce_Project__c (before insert,before update, after insert, after update) {
    /*if(trigger.isAfter&& trigger.isUpdate){
        system.debug('======Trigger START=====');
    Map<Id, Salesforce_Project__c> mp = trigger.newMap;
        for(ID eachID : mp.keySet()){
        system.debug('Each project ID: ' + eachID + ' , and each Project name is ' + mp.get(eachID).Project_Name__c);
        }     
    }
    system.debug('======Trigger END====='); */
}

