public class String_Assignment {
    public void stringMethod(){
    String localString = 'Thanks for the session on the string.';
    system.debug(localString);

    Integer lengthOfString = localString.length();
    system.debug('Length of localString is: ' + lengthOfString);

    String localStringInCapital = localString.toUpperCase();
    system.debug('localString in capital case: ' + localStringInCapital);

    Boolean containsSession = localString.contains('session');
    system.debug('Contains session?: ' + containsSession);

    Boolean containsSessions = localString.contains('sessions');
    system.debug('Contains sessions?: ' + containsSessions);

    Boolean containsUppercaseSESSION = localString.contains('SESSION');
    system.debug('Contains SESSION?: ' + containsUppercaseSESSION);

    }
}
