public class Calculator {
    public static void welcomeMessage(){
        system.debug('welcome to apex calculator.');
    }

    public static void printNewMessage(string msg){
        system.debug(msg);
        //return true; //message printed so return true;
    }

    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    

    public static integer add(integer int1, integer int2, integer int3){
        Integer sum = int1 + int2 +int3;
        return sum;
    }

    public static integer add(list<integer> intList){
        integer returnInt = 0;
        system.debug('intList = ' + intList);
        for (integer eachInt : intList) {
            system.debug('eachInt = ' + eachInt );
            system.debug(' before adding returnInt = ' + returnInt );
            returnInt += eachInt;
            system.debug(' after adding returnInt = ' + returnInt );
        }
        return returnInt;
    }

}











