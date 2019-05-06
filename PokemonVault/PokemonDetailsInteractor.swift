//
//  PokemonDetailsInteractor.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class PokemonDetailsInteractor: PokemonDetailsBoundary {
    
    private let service: ServiceClient = ServiceClientImplementation()
    
    func fetchPokemonDetails(fromUrl: String,
                             success: @escaping (_ response: PokemonDetailsModel?) -> Void,
                             failure: @escaping (_ error: NSError?) -> Void) {
        // https://pokeapi.co/api/v2/pokemon/19/
        let query = "/\(fromUrl)"
        
        service.fetchData(from: query, success: { (data) in
            if let responseData = data {
                self.createPokemonModel(from: responseData,
                                        keyDecodingStrategy: .useDefaultKeys,
                                        completionHandler: { (pokemonDetailsModel, error) in
                                            if let error = error {
                                                return failure(error)
                                            }
                                            
                                            guard let pokemonDetailsModel = pokemonDetailsModel else {
                                                return failure(error!)
                                            }
                                            success(pokemonDetailsModel)
                })
            }
        }) { (error) in
            failure(error)
        }
    }
    
    func createPokemonModel(from data: Data,
                            keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy,
                            completionHandler: @escaping (_ model: PokemonDetailsModel?, _ error: NSError?) -> Void)  {
        let jsonConverter: JSONConverter = JSONDecoder()
        jsonConverter.createModel(from: data, keyDecodingStrategy: keyDecodingStrategy) { (model, error) in
            return completionHandler(model, error)
        }
    }
}
