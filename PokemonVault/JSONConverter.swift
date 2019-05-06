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
