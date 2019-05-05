//
//  PokemonDetailsViewModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class PokemonDetailsViewModel {
    
    weak var delegate: BaseViewModelDelegate?
    private var interactor: PokemonDetailsBoundary
    private var pokemonDetailsUrl: String
    private(set) var pokemonDetailsModel: PokemonDetailsModel?
    
    init(interactor: PokemonDetailsBoundary, pokemonDetailsUrl: String, delegate: BaseViewModelDelegate) {
        self.interactor = interactor
        self.pokemonDetailsUrl = pokemonDetailsUrl
        self.delegate = delegate
    }
    
    func fetchPokemonDetails() {
        guard let pokemonDetailsUrl = pokemonDetailsUrl.extractPokemonID() else { return }
        interactor.fetchPokemonDetails(fromUrl: pokemonDetailsUrl,
                                      success: { [weak self] (pokemonDetailsModel) in
                                        guard let strongSelf = self else { return }
                                        strongSelf.pokemonDetailsModel = pokemonDetailsModel
                                        strongSelf.delegate?.refreshViewContents()
        }) { (error) in
            guard let error = error else { return }
            print("failure....,==," + error.localizedDescription)
        }
    }
}
