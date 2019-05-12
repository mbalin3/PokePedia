//
//  HomeViewModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class HomeViewModel: PokemonListInteractorDelegate {
    var interactor: PokemonListBoundary
    unowned var delegate: BaseViewModelDelegate
    weak var interactorDelegate: PokemonListInteractorDelegate?
    private(set) var pokemons: [PokemonModel]?
    
    init(interactor: PokemonListBoundary,
         delegate: BaseViewModelDelegate) {
        self.interactor = interactor
        self.delegate = delegate
    }

    convenience init(delegate: BaseViewModelDelegate) {
        self.init(interactor: PokemonListInteractor(), delegate: delegate)
        self.interactor.delegate = self
    }
    
    func pokemon(at index: Int) -> PokemonModel? {
        return pokemons?[index]
    }
    
    func fetchPokemonList(numberOfPokemons: Int) {
        guard numberOfPokemons > 0 else { return }
        interactor.fetchPokemonList(numberOfPokemons: numberOfPokemons)
    }
    
    func fetchPokemonListSuccess(successResponse: [PokemonModel]?) {
        pokemons = successResponse
        self.delegate.refreshViewContents()
    }
    
    func fetchPokemonListFailure(error: NSError?) {
        print("ERROR*****************")
    }
}

