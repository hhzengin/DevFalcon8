public class SetDemo2 {
    public static set<string> capitalizeSetString(set<string> stringSet){
        set<string> capSet= new set<string>();
        for(string eachStr: stringSet){
            string tempstr = eachStr.toUpperCase(); 
            capSet.add(tempstr);
        }
        return capSet;
    }
    
}
