public with sharing class Admissions {

    public static integer totalAdmissionGranted = 0;
    
    public void grantAdmission() {

        if(totalAdmissionGranted<2){
            System.debug('Admission Granted successfully==>less than 2');
            totalAdmissionGranted++;
        }else{
            system.debug('Admissions already full==>more than 2');
        }
    }
    public void revokeAdmission() {

        if(totalAdmissionGranted>0){
            System.debug('Admission revoked successfully==> more than 0');
            totalAdmissionGranted--;
        }else if (totalAdmissionGranted==0){
            system.debug('No one is admitted==> less than 0');
        }
    }
}
