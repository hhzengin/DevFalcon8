public class TurkishLesson2 {
    public static decimal sum(list<decimal> decList){
    decimal toplam=0;
    for(decimal dl: decList){
        toplam += dl;
    }
    return toplam; 
    }


public static decimal average(List<Decimal> decList){
    integer elementSayisi = declist.size();
    decimal tplm = sum(decList);
    decimal avrg = tplm/elementSayisi;
    return avrg; 
}

//highest
public static decimal highest(List<Decimal> decList){
    if(!decList.isEmpty()){
        decimal highElement = decList.get(0);
        for(decimal d : decList){
            if(d>highElement){
                highElement = d;
            }
        }
        return highElement;
    }
    return null;
}

//lowest
public static decimal lowest(List<Decimal> decList){
    if(!decList.isEmpty()){
        decimal lowestElement = decList.get(0);
        for(decimal d : decList){
            if(d<lowestElement){
                lowestElement = d;
            }
        }
        return lowestElement;
    }
    return null;
}

//highest and lowest sort metot
public static void highlowest(List<Decimal> decList){
    decList.sort(); //kucukten buyuge dogru siralar
    system.debug('Listenin en kucuk sayisi sort methodu ile: ' + decList.get(0));
    system.debug('Listenin en buyuk sayisi sort methodu ile: ' + decList.get(decList.size()-1));

}

}