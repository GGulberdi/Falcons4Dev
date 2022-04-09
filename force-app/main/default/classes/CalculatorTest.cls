@isTest
public with sharing class CalculatorTest {
    @isTest
    public static void testMessages() {

        Calculator.welcomeMessage();
        Calculator.printNewMessage('test method from test class');
     }
     @isTest
     public static void addTest1(){
         integer calcAdd=Calculator.add(10,15);
         system.assertEquals(25,calcAdd);
     }

     @isTest
     public static void addTest2(){
         integer calcAdd=Calculator.add(15,15,10);
         system.assertEquals(40,calcAdd);
     }

     @isTest
     public static void addTest3(){
         List<integer> listInteger = new List<Integer>();
         listInteger.add(1);
         listInteger.add(2);
         listInteger.add(3);

         integer calcAdd=Calculator.add(listInteger);
         system.assertEquals(6, calcAdd);
     }
     
}
