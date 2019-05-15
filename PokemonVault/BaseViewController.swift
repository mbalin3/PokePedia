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
    }
    
    func refreshViewContents() {
        showLoadingIndicator(shouldShow: false)
    }
    
    func showError(errorMessage: String) {
        showLoadingIndicator(shouldShow: false)
    }
    
    func showOfflineAlert() {
        let offlineAlert = UIAlertController(title: "No Internet Connection",
                                             message: "Please ensure you are connected to the internet",
                                             preferredStyle: .alert)
        offlineAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(offlineAlert, animated: true, completion: nil)
    }
}
