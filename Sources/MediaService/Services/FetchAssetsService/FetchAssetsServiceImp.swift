//
//  FetchAssetsService.swift
//  Example
//
//  Created by Evgeny Schwarzkopf on 29.04.2021.
//

import Photos

public class FetchAssetsServiceImp: FetchAssetsService {
    public func fetchAssets(assetCollection: PHAssetCollection) -> PHAsset? {
        if assetCollection.assetCollectionType == .smartAlbum ||
            assetCollection.assetCollectionSubtype == .albumMyPhotoStream {
            return PHAsset.fetchAssets(in: assetCollection, options: nil).lastObject
        }
        else {
            return PHAsset.fetchAssets(in: assetCollection, options: nil).firstObject
        }
    }

    public func makeAsset(item: MediaItem) -> PHAsset? {
        if let asset = item.asset {
            return asset
        }

        let fetchOptions = PHFetchOptions()
        return PHAsset.fetchAssets(withLocalIdentifiers: [item.identifier], options: fetchOptions).firstObject
    }

    public init() {}
}
