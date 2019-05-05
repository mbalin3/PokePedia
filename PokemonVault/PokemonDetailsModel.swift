//
//  PokemonDetailsModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

struct PokemonDetailsModel: Codable {
    let id: Int
    let name: String
    let height: Int
    let weight: Int
    let baseExperience: Int
    let statistics: [Statistic]
    let moves: [Move]
    let abilities: [Abiilities]
    let heldItems: [HeldItem]
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case height = "height"
        case weight = "weight"
        case baseExperience = "base_experience"
        case statistics = "stats"
        case moves = "moves"
        case abilities = "abilities"
        case heldItems = "held_items"
    }
    
    struct Abiilities: Codable {
        let ability: Species
        let isHidden: Bool
        
        enum CodingKeys: String, CodingKey {
            case ability = "ability"
            case isHidden = "is_hidden"
        }
    }
    
    struct Species: Codable {
        let name: String
        
        enum CodingKeys: String, CodingKey {
            case name = "name"
        }
    }
    
    struct HeldItem: Codable {
        let item: Species
        
        enum CodingKeys: String, CodingKey {
            case item = "item"
        }
    }
    
    struct Statistic: Codable {
        let baseStat: Int
        let effort: Int
        let stat: Species
        
        enum CodingKeys: String, CodingKey {
            case baseStat = "base_stat"
            case effort = "effort"
            case stat = "stat"
        }
    }
    
    struct Move: Codable {
        let move: Species
        //  let versionGroupDetails: [VersionGroupDetail]
        enum CodingKeys: String, CodingKey {
            case move = "move"
        }
    }
    
}


