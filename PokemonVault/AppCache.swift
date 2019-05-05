//
//  AppCache.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/25.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

enum AppCacheComponent {
    case pokemonList
    case pokemonDetailsModel
}

class AppCache {
    
    private var cache = [AppCacheComponent: AnyObject]()
    static let sharedInstance = AppCache()
    
    func fetchCachedObject(for component: AppCacheComponent) -> AnyObject? {
        guard let cachedObject = cache[component] else { return nil }
        return cachedObject
    }
    
    func setCacheObject(_ objectCache: AnyObject, for component: AppCacheComponent) {
        cache.updateValue(objectCache, forKey: component)
    }
    
    func invalidateAllCache() {
        cache.removeAll()
    }
    
    func invalidateCache(for component: AppCacheComponent) {
        cache.removeValue(forKey: component)
    }
}
