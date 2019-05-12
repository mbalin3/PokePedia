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
    var mockViewModelDelegate = MockBaseViewModelDelegate()
    var mockInteractorDelegate = MockPokemonListInteractorDelegate()
    var mockInteractor = MockPokemonListBoundary()
    var mockServiceClient = MockServiceClient()

    override func setUp() {
        viewModelUnderTest = HomeViewModel(interactor: mockInteractor,
                                           delegate: mockViewModelDelegate)
        viewModelUnderTest.interactorDelegate = mockInteractorDelegate
    }
    
    func testWhenPokemonListIsNilThenReturnsNil() {
        let pokemon = viewModelUnderTest.pokemon(at: 4)
        XCTAssertNil(pokemon)
    }
    
    func testWhenFetchPokemonListIsCalledThenInteractorFetchIsCalled() {
        stub(mockInteractor) { mock in
            when(mock.fetchPokemonList(numberOfPokemons: any())).thenDoNothing()
        }
        
        _ = viewModelUnderTest.fetchPokemonList(numberOfPokemons: 1)
        
        verify(mockInteractor).fetchPokemonList(numberOfPokemons: any())
    }
    
    func testInteractorFetchIsNotCalledWhenFetchPokemonListIsCalledAndZeroPokemonsAreRequested() {
        stub(mockInteractor) { mock in
            when(mock.fetchPokemonList(numberOfPokemons: any())).thenDoNothing()
        }
        
        _ = viewModelUnderTest.fetchPokemonList(numberOfPokemons: 0)
        
        verify(mockInteractor, never()).fetchPokemonList(numberOfPokemons: any())
    }
    
    func testThatWhenFetchIsSuccessfulThenRefreshViewContentsIsInvoked() {
        stub(mockViewModelDelegate) { mock in
            when(mock.refreshViewContents()).thenDoNothing()
        }
        
        _ = viewModelUnderTest.fetchPokemonListSuccess(successResponse: nil)
        
        verify(mockViewModelDelegate).refreshViewContents()
    }

    func testThatWhenFetchFailsThenShowErrorIsInvoked() {
        stub(mockViewModelDelegate) { mock in
            when(mock.refreshViewContents()).thenDoNothing()
        }
        
        _ = viewModelUnderTest.fetchPokemonListSuccess(successResponse: nil)
        
        verify(mockViewModelDelegate).refreshViewContents()
    }
    
    // Mark : Helpers functions
    
    func generateTestPokemons() -> Pokemons.Results {
        return PokemonModel(name: "test", pokemonDetailsUrl: "example.url.tes")
    }
}
