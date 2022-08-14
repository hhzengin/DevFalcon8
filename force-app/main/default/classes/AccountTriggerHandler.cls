public class AccountTriggerHandler {
    public static void updateAccountDescription(List<Account>accTriggerNew,List<Account>accTriggerOld, Map<Id,Account>accTriggerNewMap,Map<Id,Account>accTriggerOldMap){
        for(Account eachAcc : accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap ==null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            } 
            if(accTriggerOldMap != null){ 
                Map<Id,Account> TriggerOldMap = accTriggerOldMap;
                Account oldAccount = triggerOldMap.get(eachAcc.Id);
                Account newAccount = eachAcc;
                if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description='Account is active, wohoooo.';
            }
    }
}
public static void updateVIPForAllContacts(List<Account>accTriggerNew,List<Account>accTriggerOld, Map<Id,Account>accTriggerNewMap,Map<Id,Account>accTriggerOldMap){
    //get set of account  ids where only vip field is updated
    set<id> setAccIDs = new set <id>();
    for(account eachAcc: accTriggerNew){
        //cehcek if VIP field is updated.
        if(eachAcc.VIP__C != accTriggerOldMap.get(eachAcc.Id).VIP__c){
            setAccIDs.add(eachAcc.Id); 
        }
    }
    if(!setAccIDs.isEmpty()){
     //get list of contacts for Accounts 
     List<contact> conList = [SELECT id, name, vip__c , accountId FROM Contact WHERE AccountId IN :setAccIDs];

        //wE WANT TO UPDATE CONTACT RECORDS
        if(!conList.isEmpty()){
            for(contact eachContact : conList){
            //fetch VIP field of account for this contact
            //if account's VIP is false, we get false, if true, we will get true here.
                boolean accVIP = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
                eachContact.VIP__c= accVIP; //this is not tru or false, because it depends, account VIP and contact VIP related, if one is unchecked other one needs to be unchecked. 
            }
        }
        //update all contact lists. 
        update conList;
    }
    }
}