//
//  PokemonListBoundary.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

typealias SuccessBlock = (_ responseModel: [PokemonModel]?) -> Void
//typealias FailureBlock = (_ error: NSError) -> Void

protocol PokemonListBoundary {
    func fetchPokemonList(numberOfPokemons: Int,
                          success: @escaping SuccessBlock,
                          failure: @escaping (_ error: NSError?) -> Void)
}
