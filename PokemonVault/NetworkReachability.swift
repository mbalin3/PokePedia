//
//  NetworkReachability.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/29.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation
import Reachability

class NetworkReachability {
    
    private lazy var reachability = Reachability()
    static let sharedInstance = NetworkReachability()
    
    private init() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(networkStatusChanged(_:)),
                                               name: .reachabilityChanged,
                                               object: reachability)
    }
    
    static func startNotifier() -> Void {
        do {
            try (NetworkReachability.sharedInstance.reachability)?.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    
    static func stopNotifier() -> Void {
        do {
            try (NetworkReachability.sharedInstance.reachability)?.startNotifier()
        } catch {
            print("Error stopping notifier")
        }
    }
    
    @objc func networkStatusChanged(_ notification: Notification) {
        print("networkStatusChanged....notification *****************" + notification.description)
        let alert = UIAlertController(title: "Alert",
                                      message: "Message",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Click", style: .default, handler: nil))
    //    self.present(alert, animated: true, completion: nil)
        //self.navigationController?.present(alert, animated: true, completion: nil)
    }
    
    static func isReachable() -> Bool {
        return (NetworkReachability.sharedInstance.reachability)?.connection != .none ? true : false
    }
    
}
