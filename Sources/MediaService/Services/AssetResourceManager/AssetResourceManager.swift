//
//  AssetResourceManager.swift
//  MediaService
//
//  Created by Evgeny Schwarzkopf on 27.05.2021.
//

import Photos
import UIKit

public protocol AssetResourceManager {
    func writeData(for resource: PHAssetResource,
                   toFile url: URL,
                   options: PHAssetResourceRequestOptions?,
                   completion: @escaping (AVURLAsset) -> Void)
}

public class AssetResourceManagerImp: AssetResourceManager {
    public func writeData(for resource: PHAssetResource,
                          toFile url: URL,
                          options: PHAssetResourceRequestOptions?,
                          completion: @escaping (AVURLAsset) -> Void) {
        PHAssetResourceManager.default().writeData(for: resource,
                                                   toFile: url,
                                                   options: options) { _ in
            let asset = AVURLAsset(url: url, options: [AVURLAssetPreferPreciseDurationAndTimingKey: true])
            completion(asset)
        }
    }

    public init() {}
}