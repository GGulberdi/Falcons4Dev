//1.1
Map<Integer, string >zipCodeToCityMap = new Map<Integer, string>();
//1.2
zipCodeToCityMap.put(100101, 'New Delhi');
zipCodeToCityMap.put(101234, 'Mumbai');
zipCodeToCityMap.put(569023, 'New York City');
zipCodeToCityMap.put(744000, 'Turkmenistan');
zipCodeToCityMap.put(744001, 'Turkmenistan');
zipCodeToCityMap.put(73301, 'Texas');

//1.3
Boolean isContains = zipCodeToCityMap.containsKey(204101);
System.debug('1.3.Is map contains 204101?==>'+isContains);

//1.4
System.debug('1.4.Print all keys ==>'+zipCodeToCityMap.keySet());

//1.5
System.debug('1.5.Print all city name values ==>'+zipCodeToCityMap.values());

//1.6
System.debug('1.6.Print size of map ==>'+zipCodeToCityMap.size());

//1.7
Set<Integer> uniqueZipCodeSet = new Set<Integer>(zipCodeToCityMap.keySet());
System.debug('1.7.create a Set from map ==>'+uniqueZipCodeSet);

//1.8
List<String> cityNameCodeList = new List<String>(zipCodeToCityMap.values());
System.debug('1.8.create a List from map ==>'+cityNameCodeList);

//1.9
Boolean issEmpty = zipCodeToCityMap.isEmpty();
System.debug('1.9. Check is Map empty ==>'+issEmpty);

//1.10






//3.1
Map<String,Decimal> currISOCodeAndExchangeRateMap = new Map<string, Decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
System.debug('3.1 Map==>'+currISOCodeAndExchangeRateMap);

//3.2
Decimal ISO = currISOCodeAndExchangeRateMap.get('AUD');
System.debug('3.2.Get ISO currency ==>' +ISO);

//3.3
Boolean doesItHave = currISOCodeAndExchangeRateMap.containsKey('SAD');
System.debug('3.3.Check if Map has conversion rate for SAD ==>' +doesItHave);

//3.4
Set<String> eachKeyValue = new Set<String>(currISOCodeAndExchangeRateMap.keySet());
List<string> moreThanOne = new List<String>();
List<string> lessThanOne = new List<String>();

System.debug('set of keys'+eachKeyValue);

for(string eachkey:eachKeyValue){
    if(currISOCodeAndExchangeRateMap.get(eachkey)>1){
        moreThanOne.add(eachkey);
    }else{
        lessThanOne.add(eachkey);
    }

}

System.debug('3.4. ISO list which currency morethan 1==>' +moreThanOne);
System.debug('3.4. ISO list which currency less than 1==>' +lessThanOne);

