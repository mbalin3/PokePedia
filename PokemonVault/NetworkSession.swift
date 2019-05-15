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

extension URLSession: NetworkSession {
    
    func fetchData(from url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void) {
        DispatchQueue.global(qos: .utility).async { [weak self] in
            guard let strongSelf = self else { return }
            let task = strongSelf.dataTask(with: url, completionHandler: { (data, _, error) in
                completionHandler(data, error as NSError?)
            })
            task.resume()
        }
    }
}
