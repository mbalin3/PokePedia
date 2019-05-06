//
//  MockObject.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/05.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation
import XCTest

typealias Expectations = [String : Int]

protocol MockObject: class {
    var expectations: Expectations { get set }
    func verify()
}


// mockServiceClient.fetchDataCalled()
// interactorUnderTest.fetchPokemonDetails(fromUrl: "", success: { (_) in }, failure: { (_) in })
//mockServiceClient.verify()
extension MockObject {
    
    func expect(_ expectation: String) {
        let value = expectations[expectation] ?? 0
        expectations[expectation] = value + 1
    }
    
    func fire(expectation: String, file: StaticString = #file, line: UInt = #line) {
        var expectationCount = expectations[expectation] ?? 0
        expectationCount -= 1
        expectations[expectation] = expectationCount
    }
    
    func verify() {
        for (expectation, expectedCount) in expectations {
            XCTAssertTrue(expectedCount <= 0, "Expectation \(expectation) should have been executed \(expectedCount) more times")
        }
    }
}
