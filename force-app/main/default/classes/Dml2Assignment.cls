public class Dml2Assignment {
    public static void insert_dml() {
        List<Account> listAcc = new List<Account>();
        for(integer i=0; i<4; i++){
            Account acc= new Account();
            acc.Name= 'Hande Assignment' + i;
            acc.AccountNumber = 'HA- ' + i;
            listAcc.add(acc);
        }
        system.debug('Size of list: ' + listAcc.size());
        if(!listAcc.isEmpty()){
            insert listAcc;
        }
    }
    public static void updating_dml(){
        List<Account> updatedList = new List<Account>();
        List<Account> accList = [SELECT id, name FROM Account WHERE Name LIKE '%Hande%'];
        for(Account eachAcc: accList){
            eachAcc.Name = 'Hande Assignment updating'; 
            updatedList.add(eachAcc); 
        }
        if(!updatedList.isEmpty()){
            update updatedList; 
        }
    }

}