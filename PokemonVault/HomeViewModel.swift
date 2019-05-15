//
//  HomeViewModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class HomeViewModel {
    var interactor: PokemonListBoundary
    unowned var delegate: BaseViewModelDelegate
    weak var interactorDelegate: PokemonListInteractorDelegate?
    private(set) var pokemons: [PokemonData]?
    
    init(interactor: PokemonListBoundary,
         delegate: BaseViewModelDelegate) {
        self.interactor = interactor
        self.delegate = delegate
    }
    
    convenience init(delegate: BaseViewModelDelegate) {
        self.init(interactor: PokemonListInteractor(), delegate: delegate)
        self.interactor.delegate = self
    }
    
    func pokemon(at index: Int) -> PokemonData? {
        return pokemons?[index]
    }
    
    func fetchPokemonList(numberOfPokemons: Int) {
        guard numberOfPokemons > 0 else { return }
        interactor.fetchPokemonList(numberOfPokemons: numberOfPokemons)
    }
}

extension HomeViewModel: PokemonListInteractorDelegate {
    func fetchedPokemonListWithSuccess(successResponse: [PokemonData]?) {
        pokemons = successResponse
        self.delegate.refreshViewContents()
    }
    
    func fetchedPokemonListWithFailure(error: NSError?) {
        self.delegate.showError(errorMessage: "Could not retrieve the List of Pokemons")
    }
}

