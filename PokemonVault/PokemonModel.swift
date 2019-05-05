//
//  PokemonModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

typealias PokemonModel = Pokemons.Results

struct Pokemons: Codable {
    struct Results: Codable {
        let name: String?
        let pokemonDetailsUrl: String?

        enum CodingKeys: String, CodingKey {
            case name = "name"
            case pokemonDetailsUrl = "url"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }

    var results: [Results]?
}

// https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png

