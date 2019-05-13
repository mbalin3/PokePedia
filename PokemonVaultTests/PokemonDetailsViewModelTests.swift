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

class PomockkemonDetailsViewModelTests: XCTestCase {
    
    var viewModelUnderTest: PokemonDetailsViewModel!
    var mockInteractor = MockPokemonDetailsBoundary()
    var mockViewModelDelegate = MockBaseViewModelDelegate()
    var mockInteractorDelegate = MockPokemonDetailsInteractorDelegate()

    override func setUp() {
        viewModelUnderTest = PokemonDetailsViewModel(interactor: mockInteractor,
                                                     pokemonDetailsUrl: "",
                                                     delegate: mockViewModelDelegate)
    }
    
    func testWhenFetchPokemonDetailsIsCalledThenInteractorFetchIsCalled() {
        stub(mockInteractor) { mock in
            when(mock.fetchPokemonDetails(fromUrl: any())).thenDoNothing()
        }
        
        viewModelUnderTest.fetchPokemonDetails(pokemonDetailsUrl: "pokemonDetail/test/url")
        
        verify(mockInteractor).fetchPokemonDetails(fromUrl: any())
    }
    
    func testInteractorIsNotCalledWhenPokemonDetailsUrlIsEmpty() {
        stub(mockInteractor) { mock in
            when(mock.fetchPokemonDetails(fromUrl: any())).thenDoNothing()
        }
        
        viewModelUnderTest.fetchPokemonDetails(pokemonDetailsUrl: "")
        
        verify(mockInteractor, never()).fetchPokemonDetails(fromUrl: any())
    }
    
    func testWhenFetchIsSuccessfulThenRefreshViewContentIsCalled() {
        stub(mockViewModelDelegate) { mock in
            when(mock.refreshViewContents()).thenDoNothing()
        }
        
        viewModelUnderTest.fetchedPokemonDetailsWithSuccess(successResponse: nil)
    
        verify(mockViewModelDelegate).refreshViewContents()
    }
    
    func testWhenFetchFailsThenShowErrorIsInvoked() {
        stub(mockViewModelDelegate) { mock in
            when(mock.showError()).thenDoNothing()
        }
        
        viewModelUnderTest.fetchedPokemonDetailsWithFailure(error: NSError(domain: "testError", code: 00099, userInfo: nil))
        
        verify(mockViewModelDelegate).showError()
    }
    
    func testWhenPokemonDetailsIsNilThenReturnAnEmptyArrayOfAbilities() {
        let pokemonAbilities = viewModelUnderTest.pokemonAbilities()
        XCTAssert(pokemonAbilities.count == 0)
    }
    
    func testWhenPokemonDetailsIsNilThenReturnAnEmptyArrayOfStatistics() {
        let pokemonStatistics = viewModelUnderTest.pokemonStatistics()
        XCTAssert(pokemonStatistics.count == 0)
    }
    
    func testWhenPokemonDetailsIsNilThenReturnAnEmptyArrayOfHeldItems() {
        let pokemonStatistics = viewModelUnderTest.heldItems()
        XCTAssert(pokemonStatistics.count == 0)
    }
}
