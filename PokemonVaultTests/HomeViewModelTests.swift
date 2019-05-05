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
        let mockPokemons = self.generateTestPokemons()
        typealias SuccessBlock = (_ response: PokemonDetailsModel?) -> Void
        
        stub(mockInteractor) {
            when($0.fetchPokemonList(numberOfPokemons: any(), success: SuccessBlock, failure: anyClosure())).then({ _, successBlock, _ in
                successBlock(mockPokemons)
                XCTAssertNotNil(successBlock)
            })
        }
        
        stub(mockDecorator) {
            when($0.fetchPokemonList(numberOfPokemons: any(), success: SuccessBlock, failure: anyClosure())).then({ _, successBlock, _ in
                successBlock(mockPokemons)
                XCTAssertNotNil(successBlock)
            })
        }
        
        stub(mockDelegate) {
            when($0.refreshViewContents()).thenDoNothing()
        }
        
        _ = viewModelUnderTest.pokemon(at: 0)
       // verify(mockDecorator).fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())
    }
    
    func testWhenPokemonsArrayIsPopulatedThenReturnsError() {
        
        _ = viewModelUnderTest.pokemon(at: 0)
        
        verify(mockDecorator).fetchPokemonList(numberOfPokemons: any(), success: anyClosure(), failure: anyClosure())
        
    }

    
    // Mark : Helpers functions
    
    func generateTestPokemons() -> [PokemonModel] {
        var pokemonsModelArray = [PokemonModel]()
        let testPokemonModel = PokemonModel(name: "test", pokemonDetailsUrl: "example.url.tes")
        
        pokemonsModelArray.append(testPokemonModel)
        
        return pokemonsModelArray
    }

}
