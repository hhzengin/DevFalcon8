trigger AssetTrigger on Asset (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}