//
//  BaseLabel.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/03.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

@IBDesignable
class BaseLabel: UILabel {
    
    @IBInspectable var isLightText: Bool = false {
        didSet {
            self.textColor = isLightText ? UIColor.white : UIColor.darkGray
        }
    }
    
    @IBInspectable var isLargeText: Bool = false {
        didSet {
            self.font = isLargeText ? UIFont.systemFont(ofSize: 17.0) : UIFont.systemFont(ofSize: 15.0)
        }
    }
}
