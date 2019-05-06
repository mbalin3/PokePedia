//
//  UIView+Extensions.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

extension UIView {
    
    func setupViewFromNib(name: String) {
        guard let nibView = Bundle.main.loadNibNamed(name, owner: self, options: nil)?.first as? UIView else { return }
        nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(nibView)
        nibView.frame = self.bounds
    }
}
