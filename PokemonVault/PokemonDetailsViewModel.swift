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
    
    init(interactor: PokemonDetailsBoundary,
         pokemonDetailsUrl: String,
         delegate: BaseViewModelDelegate) {
        self.interactor = interactor
        self.pokemonDetailsUrl = pokemonDetailsUrl
        self.delegate = delegate
    }
    
    convenience init(pokemonDetailsUrl: String, delegate: BaseViewModelDelegate) {
        self.init(interactor: PokemonDetailsInteractor(), pokemonDetailsUrl: pokemonDetailsUrl, delegate: delegate)
        self.pokemonDetailsUrl = pokemonDetailsUrl
        self.interactor.delegate = self
    }
    
    func pokemonAbilities() -> [Ability] {
        return pokemonDetailsModel?.abilities ?? [Ability]()
    }
    
    func pokemonStatistics() -> [Statistic] {
        return pokemonDetailsModel?.statistics ?? [Statistic]()
    }
    
    func heldItems() -> [HeldItem] {
        return pokemonDetailsModel?.heldItems ?? [HeldItem]()
    }
    
    func fetchPokemonDetails(pokemonDetailsUrl: String?) {
        guard let pokemonDetailsUrl = pokemonDetailsUrl?.extractPokemonID(), !pokemonDetailsUrl.isEmpty else { return }
        interactor.fetchPokemonDetails(fromUrl: pokemonDetailsUrl)
    }
}

extension PokemonDetailsViewModel: PokemonDetailsInteractorDelegate {
    
    func fetchedPokemonDetailsWithSuccess(successResponse: PokemonDetailsModel?) {
        pokemonDetailsModel = successResponse
        self.delegate?.refreshViewContents()
    }
    
    func fetchedPokemonDetailsWithFailure(error: NSError?) {
        self.delegate?.showError()
    }
}

