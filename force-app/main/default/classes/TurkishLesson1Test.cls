@isTest
public class TurkishLesson1Test {
    @isTest
    private static void TurkishLesson1Test4(){
        integer len = TurkishLesson1.metot1('Developer');
        system.assertEquals(9, len);
    }
    @isTest
    private static void TurkishLesson1Test3(){
        integer rs = TurkishLesson1.metot2(123456);
        system.assertEquals(6, rs);
    }
    @isTest
    private static void TurkishLesson1Test1() {
        integer sum = TurkishLesson1.sum(3,5);
        system.assertEquals(8, sum);
    }
    @isTest
    private static void TurkishLesson1Test2(){
        integer carp = TurkishLesson1.carp(3, 5);
        system.assertEquals(15, carp);
    }

}
