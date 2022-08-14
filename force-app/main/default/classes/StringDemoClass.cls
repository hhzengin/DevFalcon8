public class StringDemoClass {
   public void stringMethod1(){
    //method variable
    string sessionDescription = 'Learning string method in Apex language';
    system.debug('sessionDescription= ' + sessionDescription);

    //1. length of string
    integer lengthOfStr = sessionDescription.length();
    system.debug('Length of sessionDescription is: '+ lengthOfStr);

    //2.CAPITALIZE
    String sessionDescriptionInCaps = sessionDescription.toUpperCase();
    system.debug('In caps= ' + sessionDescriptionInCaps); 

    string sessionDescriptionInCaps2 = sessionDescription.toUpperCase();
    system.debug('All caps again: ' + sessionDescriptionInCaps2); 

    //3.Contains 'Apex'
    string a = 'Apex'; 
    Boolean containsApex = sessionDescription.contains('Apex');
    system.debug('Contains Apex?: ' + containsApex);
    
    //3.1 contains 'salesforce'
    Boolean containsSalesforce = sessionDescription.contains('salesforce');
    system.debug('Contains Salesforce?: ' + containsSalesforce);


    //3.2 contains 'APEX'
    Boolean containsApex2 = sessionDescription.contains('APEX');
    system.debug('Contains APEX?: ' + containsApex2);


    //3.3 contains ignore case 'APEX'
    Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
    system.debug('Contains APEX?: ' + containsApex3);
   }
}
