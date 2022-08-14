public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        string batchName = 'Falcons 8';
        integer totalCandidates = 40;
        boolean isAdminCompleted = true;
        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' are the best';
        system.debug(batchDescription);

        Object obj = 'This is a string';
        Object obj2 = 10;
               
    }

    public void printBasicDataType2(){
        //decimal value
        decimal decValue = 27.01;
        system.debug('Decimal: ' + decValue); 

        //long value
        long longValue = 2134566777888L;
        system.debug('Long: ' + longValue); 

        ID id1 = '0018b000020VGixAAG';
        system.debug('Id is ' + id1);
    }
}
