Map <string, string> countries = new Map<string,  string>();
countries.put('Germany','Mark');
countries.put('USA','Dollar');
countries.put('India','Rupees');
countries.put('India','Rupee');
countries.put('Turkmenistan','Manat');
countries.put('Turkey','Lira');


string  tmCurrency = countries.get('Turkmenistan');

System.debug('map of countries=>'+countries);
System.debug('currency of Turkmenistan=>'+tmCurrency);

set<string> countrySet = countries.keySet();
list<string> countryList = countries.values();
System.debug('keys=>'+countrySet);
System.debug('values=>'+countryList);

//for loop
//for (string eachKey: countries.keySet()=> you can also use like above)
for(string eachKey:countrySet){
    string printstring = 'Country is ' +eachKey;
    string printVal = 'Value is ' +countries.get(eachKey);

    System.debug(printString);
    System.debug(printVal);

}
