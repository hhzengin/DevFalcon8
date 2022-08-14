public class DmlDemo3 {
    //update multiple accounts
    public static void dmlMultipleRevordUpdate_right() {
        //add all the accounts which we want to update in this list
        List<Account> updateAccounts = new List<Account>();
        //fetch all account
        List<Account> listAccount = [SELECT Id, name from Account];
        for(Account eachAccount : listAccount){
            eachAccount.Name += ' via B.0';
            updateAccounts.add(eachAccount); 
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts; 
        }      


    }
}
