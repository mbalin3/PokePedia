//
//  JSONConverter.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol JSONConverter {
    func createModel<T: Codable>(from json: Data,
                                 keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy,
                                 completion: @escaping (_ model: T?, _ error: NSError?) -> Void)
}

extension JSONDecoder: JSONConverter {
    func createModel<T: Codable>(from json: Data,
                                 keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy,
                                 completion: @escaping (T?, NSError?) -> Void) {
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = keyDecodingStrategy
            let modelData = try decoder.decode(T.self, from: json)
            return completion(modelData, nil)
        } catch let error {
            return completion(nil, error as NSError)
        }
    }
}
