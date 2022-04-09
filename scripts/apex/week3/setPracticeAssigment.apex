//1
System.debug('Default values=> ' +AddPactice.uniqueNameSet);

//2
System.debug('Size of default values=> ' +AddPactice.setSize);

//3
AddPactice.uniqueNameSet.add('Dog');
System.debug('set with added values=> ' +AddPactice.uniqueNameSet);

//4;
System.debug('Does Set include my name? => ' +AddPactice.uniqueNameSet.contains('Gul'));

//5
System.debug('Is Set uniqueNameSet empty? => ' +AddPactice.uniqueNameSet.isEmpty());

//6
AddPactice.uniqueNameSet.clear();
System.debug('Set uniqueNameSet is clear => ' + AddPactice.uniqueNameSet);
