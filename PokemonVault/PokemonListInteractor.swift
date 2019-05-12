//
//  PokemonListInteractor.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

// https://pokeapi.co/api/v2/pokemon?offset=1&limit=100

class PokemonListInteractor: PokemonListBoundary {
    
    private var service: ServiceClient
    weak var delegate: PokemonListInteractorDelegate?
    
    init(service: ServiceClient = ServiceClientImplementation()) {
        self.service = service
    }
    
    func fetchPokemonList(numberOfPokemons: Int) {
        if let pokemonList = AppCache.sharedInstance.fetchCachedObject(for: .pokemonList) as? [PokemonModel] {
            delegate?.fetchPokemonListSuccess(successResponse: pokemonList)
        } else {
            
            let query = "https://pokeapi.co/api/v2/pokemon?offset=1&limit=\(numberOfPokemons)"
            service.fetchData(from: query, success: { (data) in
                if let responseData = data {
                    AppCache.sharedInstance.invalidateCache(for: .pokemonList)
                    self.createPokemonModel(from: responseData,
                                            completionHandler: { (pokemonList, error) in
                                                AppCache.sharedInstance.setCacheObject(pokemonList as AnyObject, for: .pokemonList)
                                                self.delegate?.fetchPokemonListSuccess(successResponse: pokemonList?.results)
                    })
                }
            }) { (error) in
                self.delegate?.fetchPokemonListFailure(error: error)
            }
        }
    }
    
    private func createPokemonModel(from data: Data, completionHandler: @escaping (_ model: Pokemons?, _ error: NSError?) -> Void)  {
        let jsonConverter: JSONConverter = JSONDecoder()
        jsonConverter.createModel(from: data, keyDecodingStrategy: .useDefaultKeys) { (model, error) in
            return completionHandler(model, error)
        }
    }
}


