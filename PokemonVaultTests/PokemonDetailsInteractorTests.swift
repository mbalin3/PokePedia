//
//  PokemonDetailsInteractorTests.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import XCTest
import Cuckoo
@testable import PokemonVault

class PokemonDetailsInteractorTests: XCTestCase {
    
    var interactorUnderTest: PokemonDetailsInteractor!
    let mockServiceClient = MockServiceClient()
    let mockDelegate = MockPokemonDetailsInteractorDelegate()
    var mockPokemonDetails: PokemonDetailsModel? = nil
    
    override func setUp() {
        interactorUnderTest = PokemonDetailsInteractor(service: mockServiceClient)
        interactorUnderTest.delegate = mockDelegate
    }
    
    func testWhenFetchPokemonDetailsIsCalledThenServiceIsInvoked() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).thenDoNothing()
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonDetailsWithSuccess(successResponse: any())).thenDoNothing()
        }
                
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate, never()).fetchedPokemonDetailsWithSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchedPokemonDetailsWithFailure(error: any())
    }
   
    func testWhenFetchReturnsSuccessThenSuccessDelegateIsCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then({ _, data, _ in
                data(Data())
            })
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonDetailsWithSuccess(successResponse: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonDetailsWithSuccess(successResponse: any())
    }
    
    func testFailureDelegateIsCalledWhenFetchReturnsError() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then({ (_, _, error) in
                error(NSError(domain: "test Error", code: 0000, userInfo: nil))
            })
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonDetailsWithFailure(error: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonDetailsWithFailure(error: any())
    }
    
    func testPokemonModelIsNotCreatedWhenInvalidDataIsReturned() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then { _, data, _ in
                data(Data())
            }
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchedPokemonDetailsWithSuccess(successResponse: any())).then { (pokemonDetailsModel) in
                XCTAssertNil(pokemonDetailsModel)
            }
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchedPokemonDetailsWithSuccess(successResponse: any())
    }

}
