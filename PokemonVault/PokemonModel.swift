//
//  PokemonModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

struct Pokemons: Codable {
    var results: [PokemonData]?
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}

struct PokemonData: Codable {
    let name: String?
    let pokemonDetailsUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case pokemonDetailsUrl = "url"
    }
}

