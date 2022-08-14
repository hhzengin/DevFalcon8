public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(list<id> accIds){
        List<Account> listAcc = [SELECT id, website FROM Account WHERE Id in : accIds];
        for(Account eachAcc: listAcc){
            eachAcc.website = 'www.softinnovas.com';
        }
        update listAcc; 
    }
}
