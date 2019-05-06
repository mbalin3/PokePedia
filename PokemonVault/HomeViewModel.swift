//
//  HomeViewModel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

class HomeViewModel {
    private var decorator: PokemonListCacheDecorator
    private weak var delegate: BaseViewModelDelegate?
    private(set) var pokemons: [PokemonModel]?
    
    init(decorator: PokemonListCacheDecorator, delegate: BaseViewModelDelegate) {
        self.decorator = decorator
        self.delegate = delegate
    }
    
    func pokemon(at index: Int) -> PokemonModel? {
        return pokemons?[index]
    }
    
    func fetchPokemonList() {
        decorator.fetchPokemonList(numberOfPokemons: "100", success: { [weak self] pokemons in
            guard let strongSelf = self else { return }
            strongSelf.pokemons = pokemons
            strongSelf.delegate?.refreshViewContents()
        }) { (error) in
            // show error
            print("failure....,==," + (error?.localizedDescription ??  "Pokemon List was no found"))
        }
    }
}
