
trigger ContactTriggerAssignment on Contact (before insert, before update, after insert, after update, after delete, after undelete) {
    if(trigger.isBefore&& trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }
    if(trigger.isAfter){
        set<id> accountIds = new Set<Id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for(Contact eachCon : trigger.new){
                if(eachCon.AccountId != null){
                    accountIds.add(eachCon.AccountId);
                }
            }
        }
        //updated or deleted then get the OLD account ID. 
        if(trigger.isUpdate || trigger.isDelete){
            for(Contact eachCon : trigger.old){
                if(eachCon.AccountId != null){
                    accountIds.add(eachCon.AccountId);
                }
            }
        }
        //here we call handler method.
        ContactTriggerHandler.updateAccountRollUpField(accountIds);
    }
   
   
   
/*
    if(trigger.isBefore){
        system.debug('Before trigger');
        if(trigger.isInsert){
            system.debug('Before INSERT trigger');            
        }
        if(trigger.isUpdate){
            system.debug('Before UPDATE trigger');   
        }
    }
    if(trigger.isAfter){
        system.debug('After trigger.');
        if(trigger.isInsert){
            system.debug('After INSERT trigger');            
        }
        if(trigger.isUpdate){
            system.debug('After UPDATE trigger');  
        }    
    }
    //system.debug('.-.-.- Trigger Ended .-.-.--');
}
*/
}