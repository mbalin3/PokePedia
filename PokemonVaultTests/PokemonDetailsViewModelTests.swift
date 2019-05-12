//
//  PokemonDetailsViewModelTests.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import XCTest
import Cuckoo
@testable import PokemonVault

class PokemonDetailsViewModelTests: XCTestCase {
    
    var viewModelUnderTest: PokemonDetailsViewModel!
    let mockInteractor = MockPokemonDetailsBoundary()
    //let mockDelegate = MockBaseViewModelDelegate()

    override func setUp() {
//        viewModelUnderTest = PokemonDetailsViewModel(interactor: mockInteractor,
//                                                     pokemonDetailsUrl: "mock/Url",
//                                                     delegate: mockDelegate)
    }

    func testWhenPokemonDet() {
//        let mockPokemons = self.generateTestPokemons()
//        stub(mockInteractor) {
//            when($0.fetchPokemonDetails(fromUrl: any())).then({ (url) in
//                XCTAssertNotNil(url)
//            })
//        }
//        
//        viewModelUnderTest.fetchPokemonDetails()
//        verify(mockInteractor).fetchPokemonDetails(fromUrl: any())
        
//            when($0.fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())).then({ _, successBlock, _ in
//                successBlock(mockPokemons)
//            })
//
//        let pokemon = viewModelUnderTest.pokemon(at: 0)
//        XCTAssertNotNil(pokemon)
    }
    
    func generateTestPokemons() -> PokemonDetailsModel {
        let pokemon = PokemonDetailsModel(id: 4, name: "dfgevg", height: 7, weight: 5, baseExperience: 70, statistics: [Statistic](), moves: [Move](), abilities: [Ability](), heldItems: [HeldItem]())
        
        return pokemon
    }
}
