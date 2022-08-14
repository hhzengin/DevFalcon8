List<string>  listCandidates =    new List<String>(); 
listCandidates.add('Jane');//0
listCandidates.add('Marc');
listCandidates.add('John');
listCandidates.add('Jack');//3
//Print each element of the list in UPPERCASE one by one.

for(string eachCandidate : listCandidates){
    system.debug(eachCandidate.toUpperCase());
}