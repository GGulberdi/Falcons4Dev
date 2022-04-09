public with sharing class OperationsHelper {

    public Decimal largestOutOfTwoNumbers(decimal a, decimal b) {
        decimal c;
       
        if (a>b) c = a;
        else c=b;
        return c;
    }

    public Decimal smallestOutOfThreeNumbers(decimal a, decimal b, decimal c) {
        decimal smallest;

if (a<b && a<c) {smallest=a;
    }else if (b<a && b<c){
        smallest=b;
    }else {
        smallest=c;
    }
        
return smallest;
    }

    public integer sumofPositiveIntegers(integer n) {
        Integer summ=0;

           if (n<0) {
                    summ=null;
                    system.debug('We are not calculating the sum for negative numbers');    
         }else{
       

        for (Integer i = 1; i <= n; i++) {
            summ=summ+i;
            system.debug(summ);
           
        }
    }
        return summ;

    }
}
