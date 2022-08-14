public with sharing class ContactHandler_Assg {
    public static void createContact(LIST<Account> accTrigNew, LIST<Account> accTrigOld, MAP<ID,Account> accTrigNewMap, MAP<ID,Account> accTrigOldMap) {
        list<contact> contList = new list<contact>();
        for(Account eachAcc : accTrigNew){
            contact cont = new contact();
            cont.AccountId = eachAcc.Id;
            cont.LastName = eachAcc.Name;
            contList.add(cont);
        }
        if(!contList.isEmpty()){
            insert contList;
        }
    }
}
