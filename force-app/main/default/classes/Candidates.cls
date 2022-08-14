public class Candidates {
    public string name;
    public string gender;
    public static string CompanyName;

    public void printCandidates() {
        system.debug('===========START=========');
        system.debug('Name is ' + name+ ',' + gender);
        system.debug('Compony name= ' + CompanyName);
        system.debug('===========END==========');   
    }
    public static void printCandidateInfo() {
        system.debug('Company name is ' + CompanyName);  
    }
}
