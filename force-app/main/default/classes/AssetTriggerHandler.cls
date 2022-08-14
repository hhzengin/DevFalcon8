public class AssetTriggerHandler {
    public static void AssetHandlerUpdate(list<asset> assetTrigNew, List<Asset> assetTrigOld, map<id, asset> assetTrigNewMap,map<id, asset> assetTrigOldMap) {
        for(Asset eachAsset : assetTrigNew){
            if(eachAsset.Status != 'Shipped'){
                eachAsset.status.addError('System will only accept shipped.');
            }
        }

    }
}
