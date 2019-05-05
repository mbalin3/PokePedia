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
    
    private let service: ServiceClient = ServiceClientImplementation()
    
    func fetchPokemonList(numberOfPokemons: String,
                          success: @escaping SuccessBlock,
                          failure: @escaping FailureBlock) {
        
        let query = "?offset=1&limit=\(numberOfPokemons)"
        service.fetchData(from: query) { (data, error) in
            if let error = error {
                return failure(error)
            }
            
            if let responseData = data {
                self.createPokemonModel(from: responseData,
                                        completionHandler: { (pokemonList, error) in
                                            if let error = error {
                                                return failure(error)
                                            }
                                        
                                            guard let pokemonList = pokemonList?.results else {
                                                return failure(error!)
                                            }
                                            success(pokemonList)
                })
            }
        }
    }
    
    func createPokemonModel(from data: Data, completionHandler: @escaping (_ model: Pokemons?, _ error: NSError?) -> Void)  {
        let jsonConverter: JSONConverter = JSONDecoder()
        jsonConverter.createModel(from: data, keyDecodingStrategy: .useDefaultKeys) { (model, error) in
            return completionHandler(model, error)
        }
    }
}


