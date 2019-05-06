//
//  PokemonCell.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class PokemonCell: UICollectionViewCell {
    @IBOutlet weak var pokemonImageView: CircleImageView?
    @IBOutlet weak var pokemonName: UILabel?
    
    func populateCell(with pokemon: PokemonModel) {
        pokemonName?.text = pokemon.name
        pokemonImageView?.downloadImage(imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.pokemonDetailsUrl?.extractPokemonID() ?? "").png")
    }
}
