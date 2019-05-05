//
//  UIViewController+Extensions.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/23.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    struct LoadingIndicator {
        static var loadingIndicator = LoadingIndicatorView()
    }
    
    var loadingIndicator: LoadingIndicatorView {
        get {
            return LoadingIndicator.loadingIndicator
        }
        set {
            LoadingIndicator.loadingIndicator = newValue
        }
    }
    
    func showLoadingIndicator(shouldShow: Bool) {
        DispatchQueue.main.async {
            self.view.addSubview(self.loadingIndicator)
            shouldShow ? self.loadingIndicator.showLoadingIndicator() : self.loadingIndicator.hideLoadingIndicator()
        }
    }
}
