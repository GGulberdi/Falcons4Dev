public with sharing class StringDemoClass {
    public void stringMethod1() {
string sessionDescription = 'learning string methods in apex language';

integer lengthOfStr = sessionDescription.length();
system.debug(lengthOfStr);

string toUpper = sessionDescription.toUpperCase();
system.debug(toUpper);


Boolean containsApex = sessionDescription.contains('apex');
system.debug('is string contains Apex?' + containsApex);

Boolean containssalesforce = sessionDescription.contains('salesforce');
system.debug('is string contains Salesforce?' + containssalesforce);


boolean contain2= toUpper.containsIgnoreCase('apex');
system.debug('is string contains APEX with any version of writing:)?' + contain2);



// string lengthOfMidStr = sessionDescription.mid(15,3);
// system.debug(lengthOfMidStr);

    }
}
