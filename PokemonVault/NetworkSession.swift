//
//  NetworkSession.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol NetworkSession {
    func fetchData(from url: URL,
                   completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void)
}


