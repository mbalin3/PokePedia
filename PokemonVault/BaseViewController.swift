//
//  BaseViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/29.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseViewModelDelegate {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        NetworkReachability.isReachable { (_) in
//            print("isReachable***************")
//           
//        }
//        
//        NetworkReachability.isReachable { (_) in
//            print("#######dsfsdgdsgfd***************")
//            self.showOfflineScreen()
//        }
//    }
//    
    func refreshViewContents() {
        showLoadingIndicator(shouldShow: false)
    }
//    
//    private func showOfflineScreen() {
//        guard let offlineScreen = UIStoryboard.init(name: "OfflineScreen",
//                                                    bundle: nil).instantiateInitialViewController() else { return }
//        
//        self.navigationController?.pushViewController(offlineScreen, animated: true)
//    }
}
