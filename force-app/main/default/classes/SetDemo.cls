public  class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
System.debug('set of cities ' + cities);
    }

    public static void randomIntegerSer(){
        Set<Integer> setInteger = new Set<Integer>(); 
        Set<Integer> setInteger2 = new Set<Integer>{10,20,30,40,50,60}; 

        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(31);
        setInteger.add(31);
        setInteger.add(40);
        system.debug('set of random integers => ' + setInteger);
        system.debug('set of random integers2 => ' + setInteger2);
    }

    public static set<integer> setFromList(list<integer> intList){
        Set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        system.debug('last set is=> '+intSet);
        return intSet;
    }

public static set<string> capitalizeSet(set<string> setString){
    set<string> capsSet = new set<string>();
    for (string eachstring : setString) {
        string tempString = eachstring.capitalize();
        capsSet.add(tempString);
            }
            return capsSet;
}


}