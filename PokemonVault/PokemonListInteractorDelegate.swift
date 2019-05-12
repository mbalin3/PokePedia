//
//  PokemonListInteractorDelegate.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/11.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol PokemonListInteractorDelegate: class {
    func fetchPokemonListSuccess(successResponse: [PokemonModel]?)
    func fetchPokemonListFailure(error: NSError?)
}
