//
//  PokemonDetailsViewModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/26.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class PokemonDetailsViewModel: PokemonDetailsInteractorDelegate {
    
    weak var delegate: BaseViewModelDelegate?
    private var interactor: PokemonDetailsBoundary
    private var pokemonDetailsUrl: String
    private(set) var pokemonDetailsModel: PokemonDetailsModel?
    
    init(interactor: PokemonDetailsBoundary,
         pokemonDetailsUrl: String,
         delegate: BaseViewModelDelegate) {
        self.interactor = interactor
        self.pokemonDetailsUrl = pokemonDetailsUrl
        self.delegate = delegate
        interactor.delegate = self
    }
    
    func pokemonAbilities() -> [Ability] {
        return pokemonDetailsModel?.abilities ?? [Ability]()
    }
    
    func pokemonStatistics() -> [Statistic] {
        return pokemonDetailsModel?.statistics ?? [Statistic]()
    }
    
    func fetchPokemonDetails() {
        guard let pokemonDetailsUrl = pokemonDetailsUrl.extractPokemonID() else { return }
        interactor.fetchPokemonDetails(fromUrl: pokemonDetailsUrl)
    }
    
    func fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?) {
        pokemonDetailsModel = successResponse
        delegate?.refreshViewContents()
    }
    
    func fetchPokemonDetailsFailure(error: NSError?) {
        
    }
}


