public with sharing class Address {
    public void homeAddress() {

string  myName ='Gul';
Integer familyMembers= 5;
string houseName ='Main street';
String houseNumber= '5987';
string streetName ='Main';
string cityName ='Little Rock';
string stateName ='Arkansas';
string stateISO ='AR';
string countryName ='United States';
string countryISO ='USA';
Integer zipCode =77064;
Boolean isCurrentHome = true;

System.debug('My name is ' +myName);
System.debug('My family has ' + familyMembers +' family members');
System.debug('My house name is ' + streetName);
System.debug('My street name is ' +streetName);
System.debug('City Name is '+ cityName);
System.debug('State Name is ' +stateName);
System.debug('State ISO => '+stateISO);
System.debug('CountryName => '+countryName);
System.debug('Country ISO => '+countryISO);
System.debug('Zip code => '+zipCode);
System.debug('Is Home current? => '+isCurrentHome);

    }
}
