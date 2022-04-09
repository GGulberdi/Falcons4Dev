public with sharing class validateAddress {
    public void validateHomeAddress() {

        string houseName ='Main street';
        string streetName ='Main';
        string cityName ='Little Rock';
        string stateName ='Arkansas';
        string stateISOCode ='ar';
        string countryName ='United States';
        string countryISOCode ='usa';

        
        
        //1
        integer streetLength = streetName.length();
        System.debug('Our street name has ' + streetLength +' chracters.');
        
        //2
        Boolean isStreetNameContainsHouseName = streetName.contains(houseName);
        System.debug('Is street address contains state ISO => '+ isStreetNameContainsHouseName);
        
        //3
        Boolean isContainsISO = streetName.contains(stateISOCode);
        System.debug('Is street address contains state ISO => '+ isContainsISO);

        //4
        String stateISOtoUpper = stateISOCode.toUpperCase();
        System.debug('State ISO is converted to uppercase => ' + stateISOtoUpper);
        
        String countryISOtoUpper= countryISOCode.toUpperCase();
        System.debug('Country ISO is converted to uppercase => ' + countryISOtoUpper);
        
        String countryNametoUpper = countryName.toUpperCase();
        System.debug('Country name is converted to uppercase => ' + countryNametoUpper);
        
        String cityNameToLowercase = cityName.toLowerCase();
        System.debug('City name is converted to lowercaseee => ' + cityNameToLowercase);
        
        String stateNameToLowercase = stateName.toLowerCase();
        System.debug('State name is converted to lowercase => ' + stateNameToLowercase);
        
        //5        
        string fullAddress = houseName + ' ' + streetName;
        System.debug('My Address is  =>' + fullAddress);

       
    }
}
