trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isAfter&&trigger.isInsert){
        ContactHandler_Assg.createContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    
    
    
    /*system.debug('======Trigger START=====');
    if(trigger.isBefore){
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);            
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);            

    }
    system.debug('======Trigger END=====');
    }
    */
}

/*
 for(Account eachAcc : trigger.new){
            boolean updateDesc = false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            } 
            if(trigger.isUpdate){ 
                if(eachAcc.Active__c == 'Yes' && trigger.OldMap.get(eachAcc.Id).Active__c !=trigger.newMap.get(eachAcc.Id).Active__c){
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description='Account is active, wohoooo.';
            }

/*
if(trigger.isBefore){
            for(Account eachAcc : trigger.new){
                //when inserted
                if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                    eachAcc.Description = 'Account is active! Enjoy!';
                }
                //when updated
                if(trigger.isUpdate){
                    if(eachAcc.Active__c == 'Yes' && trigger.OldMap.get(eachAcc.Id).Active__c !=trigger.newMap.get(eachAcc.Id).Active__c){
                    eachAcc.Description = 'Account is active again! Enjoy!';
                    }
                }
            }
        }

/*
     if(trigger.isAfter && trigger.isUpdate){
        Set<Id> accIdSet = trgNewMap.keySet();
        for(ID eachID: accIdSet){
            system.debug('Account ID is ' + eachID); 

            //get new account
            account newAcc = trgNewMap.get(eachID);
            system.debug('New acc name ---> ' + newAcc.Name); 

            //get OLD account
            account oldAcc = trgOldMap.get(eachID);
            system.debug('Old acc name ---> ' + oldAcc.Name); 
        }        
    }    

/*
if(trigger.isAfter && trigger.isUpdate){
        integer countWebsiteUpdate = 0;

        Map<Id,Account> trgOldMap = trigger.oldMap;
        Map<Id,Account> trgNewMap = trigger.newMap;

        Set<Id> accIdSet = trgNewMap.keySet();

        for(ID eachID: accIdSet){
            account newAcc = trgNewMap.get(eachID);
            string newWebsite = newAcc.Website;

            account oldAcc = trgOldMap.get(eachID);
            string oldWebsite = oldAcc.Website;

            if(newWebsite != oldWebsite){
                system.debug('Acc Name: ' + newAcc.Name + ' , website is changed to ' + newWebsite);
                countWebsiteUpdate++; 
            }
        }
    }   

/*
    if(trigger.isBefore && trigger.isInsert){
    system.debug('======BEFORE INSERT=====');
    system.debug('Old Map ---> ' +trgOldMap);
    system.debug('New Map ---> ' +trgNewMap);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('======AFTER INSERT=====');
        system.debug('Old Map ---> ' +trgOldMap);
        system.debug('New Map ---> ' +trgNewMap);
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('======BEFORE UPDATE=====');
        system.debug('Old Map ---> ' +trgOldMap);
        system.debug('New Map ---> ' +trgNewMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('======AFTER UPDATE=====');
        system.debug('Old Map ---> ' +trgOldMap);
        system.debug('New Map ---> ' +trgNewMap);
    }    
  /*
  if(trigger.isAfter&&trigger.isUpdate){
       List<Account> oldAccounts = trigger.old;
       List<Account> newAccounts = trigger.new;
       //OLD FOR EACH LOOP
       //for(Account oldAcc : oldAccounts ){
       // system.debug('Old account id: ' + oldAcc.id + ' , Old account name ' + oldAcc.Name);
       //}
       //for(Account newAcc : newAccounts){
       // system.debug('New account id: ' + newAcc.id + ' , New account name ' + newAcc.Name);
       //}
    }  

    /*if(trigger.isBefore && trigger.isInsert){
        system.debug('Before INSERT trigger trigger.old---> ' + trigger.old);
    }
    if(trigger.isAfter&&trigger.isInsert){
        system.debug('After insert trigger trigger.old---> ' + trigger.old);
    } 
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('Before update trigger trigger.old---> ' + trigger.old);
    }
    if(trigger.isAfter&&trigger.isUpdate){
        system.debug('After update trigger trigger.old---> ' + trigger.old);
    }   
    system.debug('======Trigger END=====');



    /*
    List<Account> newAccounts = trigger.new;
    if(trigger.isAfter && trigger.isInsert){
        system.debug('After trigger trigger.new= ' + newAccounts);
        system.debug('Size of trigger.new= ' + newAccounts.size());
        for( account eachAcc : newAccounts){
            system.debug('Account ID is ' +eachAcc.ID + ' , each account name is  ' + eachAcc.name); 
        }
    }
        system.debug('======Trigger END=====');
    
    
    
    /*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('Before INSERT trigger called.');
    }
    if(trigger.isAfter&&trigger.isInsert){
        system.debug('After insert trigger called');
    }   
    //UPDATE
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('Before UPDATE trigger called.');
    }
    if(trigger.isAfter&&trigger.isUpdate){
        system.debug('After UPDATE trigger called');
    }   
    system.debug('======Trigger END=====');


    /*
   
    
    


*/
