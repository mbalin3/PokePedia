//
//  ServiceClient.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol ServiceClient: class {
    func fetchData(from urlString: String,
                   success: @escaping (_ responseData: Data?) -> (),
                   failure: @escaping (_ error: NSError?) -> ())
}

class ServiceClientImplementation: ServiceClient {
    private let session: NetworkSession
    
    init(session: NetworkSession = URLSession.shared) {
        self.session = session
    }
    
    func fetchData(from urlString: String,
                   success: @escaping (_ responseData: Data?) -> (),
                   failure: @escaping (_ error: NSError?) -> ()) {
        
        guard let url = URL(string: urlString) else {
            return failure(NSError(domain: "The URL is nil", code: 0, userInfo: nil))
        }
        
        session.fetchData(from: url) { (data, error) in
            guard error == nil, let responseData = data else {
                return failure(error)
            }
            success(responseData)
        }
    }
}
