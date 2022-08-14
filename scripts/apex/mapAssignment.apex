Map<String,Integer> marksObtainInMaths = new Map<String,Integer>();
marksObtainInMaths.put('0111CE112', 18);
marksObtainInMaths.put('0111CE102', 25);
marksObtainInMaths.put('0111CE113', 43);
marksObtainInMaths.put('0111CE105', 04);
marksObtainInMaths.put('0111CE123', 18);
system.debug('Map of student roll: ' + marksObtainInMaths);

system.debug('All of the students roll number: ' + marksObtainInMaths.keySet());

system.debug('Marks obtain: ' + marksObtainInMaths.values());

Set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
for(string eachRoll : uniqueRollNumberSet){
    system.debug('Each student roll in the map: ' + eachRoll);
}

list<integer>  marksObtainList = marksObtainInMaths.values(); 
for(integer eachMark: marksObtainList){
    system.debug('Marks obtain : ' + eachMark); 
}

set <string> qualification = marksObtainInMaths.keySet();
for(string rollNumber : qualification){
    if(marksObtainInMaths.get(rollNumber)<20){
        system.debug(rollNumber + ' is not qualified for next class.');
    }
}










 


