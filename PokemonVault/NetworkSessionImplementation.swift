//
//  NetworkSessionImplementation.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

extension URLSession: NetworkSession {
    
    func fetchData(from url: URL, completionHandler: @escaping (_ data: Data?, _ error: NSError?) -> Void) {
        #warning ("Review quality of service, then pass it in")
        DispatchQueue.global(qos: .utility).async { [weak self] in
            guard let strongSelf = self else { return }
            let task = strongSelf.dataTask(with: url, completionHandler: { (data, _, error) in
                completionHandler(data, error as NSError?)
            })
            task.resume()
        }
    }
}
