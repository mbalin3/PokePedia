//
//  MockServiceClient.swift
//  PokemonVaultTests
//
//  Created by Mbalenhle Ndaba on 2019/05/05.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation
@testable import PokemonVault

class MockServiceClient: MockObject, ServiceClient {
    var expectations: Expectations = [:]
    var expectation = "fetchDataCalled"
    
    func fetchData(from urlString: String, completionHandler: @escaping (Data?, NSError?) -> Void) {
        expect(expectation)
    }
    
    func fetchDataCalled() {
        fire(expectation: expectation)
    }
}
