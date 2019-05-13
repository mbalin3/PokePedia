//
//  BaseViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/29.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseViewModelDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkReachability.startNotifier()
        if NetworkReachability.isReachable() {
            print("* * * * *    * * * * *")
        } else {
            self.showOfflineScreen()
        }
    }
    
    func refreshViewContents() {
        showLoadingIndicator(shouldShow: false)
    }
    
    func showError() {
        showLoadingIndicator(shouldShow: false)
    }
    
    private func showOfflineScreen() {
        guard let offlineScreen = UIStoryboard.init(name: "OfflineScreen",
                                                    bundle: nil).instantiateInitialViewController() else { return }
        
        self.navigationController?.pushViewController(offlineScreen, animated: true)
    }
}
