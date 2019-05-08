//
//  PokemonDetailsInteractor.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class PokemonDetailsInteractor: PokemonDetailsBoundary {
    
    private var service: ServiceClient
    weak var delegate: PokemonDetailsInteractorDelegate?
    
    init(service: ServiceClient = ServiceClientImplementation()) {
        self.service = service
    }
    
    func fetchPokemonDetails(fromUrl: String) {
        // https://pokeapi.co/api/v2/pokemon/19/
        let query = "https://pokeapi.co/api/v2/pokemon/\(fromUrl)"
        
        service.fetchData(from: query, success: { (data) in
            if let responseData = data {
                self.createPokemonModel(from: responseData,
                                        keyDecodingStrategy: .useDefaultKeys,
                                        completionHandler: { (pokemonDetailsModel, error) in
                                            self.delegate?.fetchPokemonDetailsSuccess(successResponse: pokemonDetailsModel)
                })
            }
        }, failure: { (error) in
            self.delegate?.fetchPokemonDetailsFailure(error: error)
        })
    }
    
    private func createPokemonModel(from data: Data,
                                    keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy,
                                    completionHandler: @escaping (_ model: PokemonDetailsModel?, _ error: NSError?) -> Void)  {
        let jsonConverter: JSONConverter = JSONDecoder()
        jsonConverter.createModel(from: data, keyDecodingStrategy: keyDecodingStrategy) { (model, error) in
            return completionHandler(model, error)
        }
    }
}
