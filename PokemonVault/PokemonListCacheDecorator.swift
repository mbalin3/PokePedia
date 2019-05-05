//
//  PokemonListCacheDecorator.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/25.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol PokemonListCacheDecorator: PokemonListBoundary {
    func fetchPokemonList(numberOfPokemons: String,
                          success: @escaping SuccessBlock,
                          failure: @escaping FailureBlock)
}

class PokemonListInteractorCacheDecorator: PokemonListCacheDecorator {
    
    func fetchPokemonList(numberOfPokemons: String,
                          success: @escaping SuccessBlock,
                          failure: @escaping FailureBlock) {
        
        if let pokemonList = AppCache.sharedInstance.fetchCachedObject(for: .pokemonList) as? [PokemonModel] {
                success(pokemonList)
        } else {
            let pokemonListInteractor = PokemonListInteractor()
            pokemonListInteractor.fetchPokemonList(numberOfPokemons: numberOfPokemons,
                                                   success: { (pokemonList) in
                                                    AppCache.sharedInstance.setCacheObject(pokemonList as AnyObject, for: .pokemonList)
                                                    success(pokemonList)
            }) { (error) in
                failure(error)
            }
        }
    }
}
