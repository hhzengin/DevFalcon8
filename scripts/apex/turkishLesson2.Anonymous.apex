//system.debug(TurkishLesson2.sum(50));

List<string> isimList=new List<string>{'Ayse', 'Tunc', 'Bilge','Deniz','Hande','Ayse'};
system.debug(isimList);
string check= 'Ayse';
integer count=0;
string msg='Bu isim listemizde bulunmamaktadir.';
for(string eachName: isimList){
    if(eachName== check){
        count++;
        //msg='Bu isim listemizde vardir.';
       
    }    
}
//system.debug(msg);
system.debug(check + ' ismi listemizde ' + count + ' tane olarak bulunmaktadir..');


list<decimal> list1 = new List<Decimal>();
list1.add(15.22);
list1.add(8.12);
list1.add(28.34);
list1.add(68.11);
list1.add(44.44);
system.debug('Listenin elemanlarinin toplami= ' + TurkishLesson2.sum(list1));

system.debug('Listenin aritmatik ortalamasi= ' + TurkishLesson2.average(list1));

system.debug('Listenin en buyuk sayisi= ' + TurkishLesson2.highest(list1));

TurkishLesson2.highlowest(list1);

