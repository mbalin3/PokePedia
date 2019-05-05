//
//  PokemonListInteractorTests.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import XCTest
import Cuckoo
@testable import PokemonVault

class PokemonListInteractorTests: XCTestCase {
    
    var interactorUnderTest: PokemonDetailsInteractor!
    let mockServiceClient = MockServiceClient()

    override func setUp() {
        interactorUnderTest = PokemonDetailsInteractor()
    }
    
    func testWhenFetchingPokemonListThenResponseDataIsPopulatedOnSuccess() {
        stub(mockServiceClient) {
            when($0.fetchData(from: any(), completionHandler: any())).then({ _ , _ in
                
            })
        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: any(), success: anyClosure(), failure: anyClosure())
        verify(mockServiceClient).fetchData(from: anyString(), completionHandler: anyClosure())
    }


}
