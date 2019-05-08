//
//  PokemonDetailsBoundary.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

//typealias FetchPokemonDetailsSuccessBlock = (_ response: PokemonDetailsModel?) -> Void

protocol PokemonDetailsBoundary: class {
    var delegate: PokemonDetailsInteractorDelegate? { get set }

    func fetchPokemonDetails(fromUrl: String)
}
