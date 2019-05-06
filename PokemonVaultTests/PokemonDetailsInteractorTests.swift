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
    var mockPokemonDetails: PokemonDetailsModel? = nil

    override func setUp() {
        interactorUnderTest = PokemonDetailsInteractor()
    }
    
    func testWhenFetchingPokemonListAndReturnsNilThenResponseDataAndErrorIsNotPopulated() {
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "", success: { (pokemonDetails) in
            XCTAssertNil(pokemonDetails)
        }, failure: { (error) in
            XCTAssertNil(error)
        })
    }
    
    func testWhenFetchingPokemonListThenResponseDataAndErrorIsNotPopulated() {
   //     var pokemonDetails = generateMockPokemonDetailsModel()
        typealias mockSuccessBlock = (_ responseModel: PokemonDetailsModel?) -> ()
        typealias mockFailureBlock = (_ error: NSError?) -> ()
        var mockUrl = "urlString.com"
        
//        stub(mockServiceClient) {
//            when($0.fetchData(from: mockUrl, success: { (success) in
//                XCTAssertNil(success)
//            }, failure: { (error) in
//                XCTAssertNil(error)
//            }))
//        }
        
        interactorUnderTest.fetchPokemonDetails(fromUrl: "", success: { (_) in }, failure: { (_) in })
        verify(mockServiceClient).fetchData(from: any(), success: anyClosure(), failure: anyClosure())
    }
    
//    func generateMockPokemonDetailsModel() -> PokemonDetailsModel {
//        let pokemonDetailsModel = PokemonDetailsModel(id: <#T##Int#>, name: <#T##String#>, height: <#T##Int#>, weight: <#T##Int#>, baseExperience: <#T##Int#>, statistics: <#T##[Statistic]#>, moves: <#T##[Move]#>, abilities: <#T##[Ability]#>, heldItems: <#T##[HeldItem]#>)
//        return pokemonDetailsModel
//    }


}
