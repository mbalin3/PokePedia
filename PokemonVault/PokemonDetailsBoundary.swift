//
//  PokemonDetailsBoundary.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

//typealias FetchPokemonDetailsSuccessBlock = (_ response: PokemonDetailsModel?) -> Void

protocol PokemonDetailsBoundary {
    func fetchPokemonDetails(fromUrl: String,
                             success: @escaping (_ response: PokemonDetailsModel?) -> Void,
                             failure: @escaping (_ error: NSError?) -> Void)
}
