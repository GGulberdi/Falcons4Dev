public with sharing class homework {
    public void homework1() {

string  myName ='Gul';
Integer familyMembers= 5;
string houseName ='Main street';
Integer streetNumber= 5987;
string streetAddrees ='Main';
string cityName ='Little Rock';
string stateName ='Arkansas';
string stateISO ='ar';
string countryName ='United States';
string countryISO ='usa';
Integer zipCode =77064;
Boolean servisable = true;
String contactNumber='8526541515';
Boolean isAddressValid = true;



//1
integer streetLength = stateName.length();
System.debug('Our street name has ' + streetLength +' chracters.');

//2


//3
String stateISOtoUpper = stateISO.toUpperCase();
System.debug('State ISO is converted to uppercase => ' + stateISOtoUpper);

String countryISOtoUpper= countryISO.toUpperCase();
System.debug('Country ISO is converted to uppercase => ' + countryISOtoUpper);

String countryNametoUpper = countryName.toUpperCase();
System.debug('Country name is converted to uppercase => ' + countryNametoUpper);

String cityNameToLowercase = cityName.toLowerCase();
System.debug('City name is converted to lowercase => ' + cityNameToLowercase);

String stateNameToLowercase = stateName.toLowerCase();
System.debug('State name is converted to lowercase => ' + stateNameToLowercase);

//4
Boolean isMatch = houseName.equals(streetAddrees);
System.debug('House name and Street name are same => '+ isMatch );

//5
Boolean isContains = houseName.contains(cityName);
System.debug('Is House name contains City Name => '+ isContains);

//6
Boolean isContains2 = streetAddrees.contains(stateISO);
System.debug('Is street address contains state ISO => '+ isContains2);

//7
string concat = houseName + ' ' + streetAddrees;
System.debug('Concatination of House name and street address =>' + concat);

//8

string fullAddress = streetNumber + ' ' + streetAddrees + ' ' + cityName + ', ' + stateName + ', ' + countryName;
System.debug('My Address is  =>' + fullAddress);

    }
}
