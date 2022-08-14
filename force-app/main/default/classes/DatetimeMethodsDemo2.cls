public class DatetimeMethodsDemo2 {
    public void printSubscriptionEndDate() {
        Date subscriptionStartDate = date.today();
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('Subscription end date is= ' + subscriptionEndDate);

        integer year = subscriptionEndDate.year();
        system.debug('Subscription end year is= ' + year);

        integer month = subscriptionEndDate.month();
        system.debug('Subscription end month is= ' + month);
    }

    public void printOfferEndDatetime(){
        //calculate offer end datetime after 51 hours
        Datetime dtNow = datetime.now();
        Datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('Offer end datetime= ' + dtOfferEnd);

        Date offerEndDate = dtOfferEnd.date();
        system.debug('Offer ends on ' + offerEndDate);

    }
}
