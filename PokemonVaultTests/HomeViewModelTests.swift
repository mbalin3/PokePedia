//
//  HomeViewModelTests.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import XCTest
import Cuckoo
@testable import PokemonVault

class HomeViewModelTests: XCTestCase {

    var viewModelUnderTest: HomeViewModel!
    let mockDecorator = MockPokemonListCacheDecorator()
    let mockDelegate = MockBaseViewModelDelegate()
    let mockInteractor = MockPokemonListBoundary()

    override func setUp() {
       viewModelUnderTest = HomeViewModel(decorator: mockDecorator,
                                          delegate: mockDelegate)
    }
    
    func testWhenPokemonsArrayIsNilThenReturnsNil() {
        let pokemon = viewModelUnderTest.pokemon(at: 4)
        XCTAssertNil(pokemon)
    }
    
    func testWhenPokemonsArrayIsPopulatedThenReturnsPokemonAtIndex() {
        var mockPokemons: [PokemonModel]? = nil

        stub(mockDecorator) {
            when($0.fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())).then({ _, success, _ in
                mockPokemons = self.generateTestPokemons()
                success(mockPokemons)
            })
        }
        
        stub(mockDelegate) {
            when($0.refreshViewContents()).thenDoNothing()
        }
        
        XCTAssertNotNil(mockPokemons)
    }
    
    func testWhenFetchingPokemonsReturnsErrorPokemonsArrayReturnsNil() {
        
        let mockError = NSError(domain: "test", code: 000, userInfo: nil)
        
        stub(mockDecorator){
            when($0.fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())).then({ _, _, failure in
                failure(mockError)
            })
        }
        
        let pokemons = viewModelUnderTest.pokemon(at: 0)
        XCTAssertNil(pokemons)
    }
    
    func testWhenFetchingPokemonsReturnsErrorRefreshVIewContentsIsNotInvoked() {
        
        let mockError = NSError(domain: "test", code: 000, userInfo: nil)
        
        stub(mockDecorator){
            when($0.fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())).then({ _, _, failure in
                failure(mockError)
            })
        }
        
        _ = viewModelUnderTest.pokemon(at: 0)
        verify(mockDelegate, never()).refreshViewContents()
    }

    
    // Mark : Helpers functions
    
    func generateTestPokemons() -> [PokemonModel] {
        var pokemonsModelArray = [PokemonModel]()
        let testPokemonModel = PokemonModel(name: "test", pokemonDetailsUrl: "example.url.tes")
        
        pokemonsModelArray.append(testPokemonModel)
        
        return pokemonsModelArray
    }

}
