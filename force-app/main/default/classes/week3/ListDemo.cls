public with sharing class ListDemo {
    public static string candidateList(integer i) {
        // Creating empty list string 
//collection  datatype    variable          creating new instance of list Class       


List          <string>     listCandidates = new List<string>();
listCandidates.add('Marc');
listCandidates.add('Elon');
listCandidates.add('Bill');
listCandidates.add('Marc');

if(i>listCandidates.size()) return 'No value found';
string returnstr = listCandidates[i];
return returnstr;
// System.debug('candidates are ' +listCandidates[i]);
// System.debug('the third index  value of candidates is ' +listCandidates[3]);

    }

public static void randomInteger(){
    
    List<integer> listInteger = new List<integer>();

listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);

System.debug('listIntegers are ' +listInteger);
System.debug('the third index  value of integers is ' +listInteger[3]);


}

}
