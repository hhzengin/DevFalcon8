@isTest 
public class Calculator2Test {
    @isTest
    private static void testMethod1() {
        //we test our actual mesage
        string returnMsg = Calculator2.printAndReturnMessage('This is from test');
        system.assertEquals('This is from test...OK Cool', returnMsg);
    }
    @isTest
    private static void testMethod2(){
        integer sum1 = Calculator2.add(13,13);
        system.assertEquals(26, sum1);

    }
    @isTest
    public static void testMethod3(){
        integer sum2 = Calculator2.add(10,20,30);
        system.assertEquals(60, sum2);
        
    }
}
