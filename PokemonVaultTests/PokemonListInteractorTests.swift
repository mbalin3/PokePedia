//
//  PokemonListInteractorTests.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/05.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import XCTest
import Cuckoo
@testable import PokemonVault

class PokemonListInteractorTests: XCTestCase {

    var interactorUnderTest: PokemonListInteractor!
    var mockServiceClient = MockServiceClient()
    var mockDelegate = MockPokemonListInteractorDelegate()
    
    override func setUp() {
        interactorUnderTest = PokemonListInteractor(service: mockServiceClient)
        interactorUnderTest.delegate = mockDelegate
    }
    
    func testWhenFetchPokemonListIsCalledThenServiceIsInvoked() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).thenDoNothing()
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithSuccess(successResponse: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 18)
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate, never()).fetchedPokemonListWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonListWithFailure(error: any())
    }
    
    func testWhenFetchPokemonListReturnsSuccessThenSuccessDelegateIsCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then { (_, data, _) in
                XCTAssertNotNil(data)
                data(Data())
            }
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithSuccess(successResponse: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 30)
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonListWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonListWithFailure(error: any())
    }
    
    func testWhenFetchPokemonListReturnsFailureThenFailureDelegateIsCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then { (_, _, error) in
                error(NSError(domain: "Error test", code: 0000, userInfo: nil))
            }
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithFailure(error: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 1)
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonListWithFailure(error: any())
        verify(mockDelegate, never()).fetchedPokemonListWithSuccess(successResponse: any())
    }
    
    func testWhenInvalidDataIsReturnedThenPokemonListModelIsNotCreated() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then { (_, data, _) in
                data(Data())
            }
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithSuccess(successResponse: any())).then { (pokemonList) in
                XCTAssertNil(pokemonList)
            }
        }
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 50)
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonListWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonListWithFailure(error: any())
    }
    
    func testWhenCacheHasPokemonListThenFetchPokemonListIsNotCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: any(), success: anyClosure(), failure: anyClosure())).thenDoNothing()
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithSuccess(successResponse: any())).then { (pokemonList) in
                XCTAssertNotNil(pokemonList)
            }
        }
        
        populateAppCacheForPokemonList()
        XCTAssertNotNil(MockAppCache.sharedInstance.fetchCachedObject(for: .pokemonList))
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 40)
        verify(mockServiceClient, never()).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonListWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonListWithFailure(error: any())
    }
    
    func testWhenCacheDoesNotHavePokemonListThenFetchPokemonListIsCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then { (_, data, _) in
                data(Data())
            }
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonListWithSuccess(successResponse: any())).thenDoNothing()
        }
        
        MockAppCache.sharedInstance.invalidateCache(for: .pokemonList)
        XCTAssertNil(MockAppCache.sharedInstance.fetchCachedObject(for: .pokemonList))
        
        interactorUnderTest.fetchPokemonList(numberOfPokemons: 50)
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonListWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonListWithFailure(error: any())
    }
    
    override func tearDown() {
        MockAppCache.sharedInstance.invalidateAllCache()
        super.tearDown()
    }
    
    // Mark : Helpers functions
    
    func populateAppCacheForPokemonList() {
        var pokemonList = [PokemonData]()
        let pokemon = PokemonData(name: "Pikachu", pokemonDetailsUrl: "test/url/pokemon")
        pokemonList.append(pokemon)
        
        MockAppCache.sharedInstance.setCacheObject(pokemonList as AnyObject, for: .pokemonList)
    }
}
