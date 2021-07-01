//
//  TestServiceLocator.swift
//  Example
//
//  Created by Evgeny Schwarzkopf on 01.07.2021.
//

import MediaService

typealias TestServicesAlias = HasFetchCollectionsService &
                              HasPermissionsService &
                              HasFetchAssetsService &
                              HasThumbnailCacheService &
                              HasCachingImageManager &
                              HasAssetResourceManager

// swiftlint:disable:this variable_name
var TestServices: TestServicesFactory = .init()

final class TestServicesFactory: TestServicesAlias {
    var fetchCollectionsService: FetchCollectionsService = FetchCollectionServiceMock()
    var permissionsService: PermissionsService = PermissionsServiceMock()
    var fetchAssetsService: FetchAssetsService = FetchAssetsServiceMock()
    var thumbnailCacheService: ThumbnailCacheService = ThumbnailCacheServiceMock()
    var cachingImageManager: CachingImageManager = CachingImageManagerMock()
    var assetResourceManager: AssetResourceManager = AssetResourceManagerMock()
}
