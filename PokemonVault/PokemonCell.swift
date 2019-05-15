//
//  PokemonCell.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class PokemonCell: UICollectionViewCell {
    @IBOutlet weak var pokemonImageView: CircleImageView!
    @IBOutlet weak var pokemonName: UILabel!
    
    private let imageUrlString = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/%@.png"
    
    func populateCell(with pokemon: PokemonData) {
        pokemonName.text = pokemon.name
        pokemonImageView.downloadImage(imageUrl:String(format: imageUrlString, pokemon.pokemonDetailsUrl?.extractPokemonID() ?? ""))
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        pokemonImageView?.image = UIImage(named: "pokemonBall")
    }
}
