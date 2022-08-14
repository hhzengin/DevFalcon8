map<string, string> mapCurrency = new map<string, string>();
mapCurrency.put('USA','Dollar');
mapCurrency.put('Belgium','Euro');//this one will be printed as well as Germany. 
mapCurrency.put('China','Yuan');
mapCurrency.put('India','Rupee');
mapCurrency.put('Turkey','Liras');//this is replaced with new one below. 
mapCurrency.put('Turkey','Lira');
mapCurrency.put('United Arab Emirates','Dirham');
mapCurrency.put('Germany','Euro');


system.debug('Map of country and currency: ' + mapCurrency); 

string UAECurr = mapCurrency.get('United Arab Emirates');
string country = 'China';
string belgiumCurr = mapCurrency.get('Belgium');

system.debug('UAE currency is : ' + UAECurr); 
system.debug('Belgium currency is : ' + belgiumCurr); 

Set<String> countrySet = mapCurrency.keySet();
system.debug('Countries in map: ' + countrySet);


List<String> allCurrency = mapCurrency.values();
system.debug('Currencies in map: ' + allCurrency);


set<string> newCountries = mapCurrency.keySet();
for(string eachKey : newCountries){
    String printString = 'Country is ' + eachKey;
    system.debug(printString); 


string eachValue = mapCurrency.get(eachKey);
system.debug('Currency is ' + eachValue); 

}