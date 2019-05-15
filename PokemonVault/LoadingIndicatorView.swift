//
//  LoadingIndicatorView.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/23.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class LoadingIndicatorView: UIView {
    
    private var activityIndicator: UIActivityIndicatorView?
    private var backgroundView = TransparentView()
    
    func showLoadingIndicator() {
        addBackgroundView()
        addActivityIndicator()
    }
    
    func hideLoadingIndicator() {
        stopActivityIndicator()
        backgroundView.removeFromSuperview()
        self.removeFromSuperview()
    }
    
    private func stopActivityIndicator() {
        activityIndicator?.stopAnimating()
        activityIndicator?.removeFromSuperview()
        UIApplication.shared.endIgnoringInteractionEvents()
    }
    
    private func addActivityIndicator() {
        activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicator?.center = backgroundView.center
        activityIndicator?.hidesWhenStopped = true
        activityIndicator?.startAnimating()
        backgroundView.addSubview(activityIndicator ?? UIActivityIndicatorView(style: .whiteLarge))
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    private func addBackgroundView() {
        backgroundView.isDarkTransparentView = true
        backgroundView.frame = superview?.frame ?? UIScreen.main.bounds
        self.addSubview(backgroundView)
    }
}
