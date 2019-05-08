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
    let mockBoundary = MockPokemonDetailsBoundary()
    var mockPokemonDetails: PokemonDetailsModel? = nil
    
    override func setUp() {
        interactorUnderTest = PokemonDetailsInteractor(service: mockServiceClient)
        interactorUnderTest.delegate = mockDelegate
    }
    
    func testServiceIsInvokedWhenFetchIsCalled() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).thenDoNothing()
        }
        
        stub(mockBoundary) { mock in
            when(mock.fetchPokemonDetails(fromUrl: anyString())).then({ (_) in
                
            })
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate, never()).fetchPokemonDetailsSuccess(successResponse: any())
        verify(mockDelegate, never()).fetchPokemonDetailsFailure(error: any())
    }
   
    func testSuccessDelegateIsCalledWhenFetchReturnsSuccess() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then({ _, data, _ in
                data(Data())
            })
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchPokemonDetailsSuccess(successResponse: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchPokemonDetailsSuccess(successResponse: any())
    }
    
    func testFailureDelegateIsCalledWhenFetchReturnsError() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then({ (_, _, error) in
                error(NSError(domain: "test Error", code: 0000, userInfo: nil))
            })
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchPokemonDetailsFailure(error: any())).thenDoNothing()
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchPokemonDetailsFailure(error: any())
    }
    
    func testPokemonModelIsNotCreatedWhenInvalidDataIsReturned() {
        stub(mockServiceClient) { mock in
            when(mock.fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())).then({ _, data, _ in
                data(Data())
            })
        }
        
        stub(mockDelegate) { mock in
            when(mock.fetchPokemonDetailsSuccess(successResponse: any())).then({ (pokemonDetailsModel) in
                XCTAssertNil(pokemonDetailsModel)
            })
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "")
        verify(mockServiceClient).fetchData(from: anyString(), success: anyClosure(), failure: anyClosure())
        verify(mockDelegate).fetchPokemonDetailsSuccess(successResponse: any())
    }

}
