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
    var delegate: PokemonListInteractorDelegate? { get set }
    
    func fetchPokemonList(numberOfPokemons: Int)
}
