//
//  ServiceClient.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/20.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol ServiceClient {
    func fetchData(from urlString: String,
                   completionHandler: @escaping (_ responseData: Data?, _ error: NSError?) -> Void)
}

class ServiceClientImplementation: ServiceClient {
    private let session: NetworkSession
    
    init(session: NetworkSession = URLSession.shared) {
        self.session = session
    }
    
    func fetchData(from urlString: String,
                   completionHandler: @escaping (_ responseData: Data?, _ error: NSError?) -> Void) {
        print(urlString)
        let baseURL = "https://pokeapi.co/api/v2/pokemon"
        //https://pokeapi.co/api/v2/pokemon/19/
        
        guard let url = URL(string: baseURL + urlString) else {
            return completionHandler(nil, nil)
        }
        
        session.fetchData(from: url) { (data, error) in
            guard error == nil, let responseData = data else {
                return completionHandler(nil, error)
            }
            completionHandler(responseData, nil)
        }
    }
}
