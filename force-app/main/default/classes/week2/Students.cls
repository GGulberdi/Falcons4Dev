public with sharing class Students {

    public string firstname;
    public string lastName;
    public Integer classYear;
    public string major;

    public  void generateReport() {
        system.debug('Report Generated for ' + firstname + ' ' + lastName + ' of ' + classYear+' class year.');
    
    }
}
