//
//  Copyright © 2018 Rosberry. All rights reserved.
//

import Photos

extension PHAssetCollection {
    var currentAssetItemsCount: Int {
        currentAssetCount(.image) + currentAssetCount(.video) + currentAssetCount(.unknown) + currentAssetCount(.audio)
    }

    func currentAssetCount(_ type: PHAssetMediaType) -> Int {
        let fetchOptions = PHFetchOptions()
        fetchOptions.predicate = NSPredicate(format: "mediaType == %d", type.rawValue)
        let result = PHAsset.fetchAssets(in: self, options: fetchOptions)
        return result.count
    }
}