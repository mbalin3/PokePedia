//
//  TransparentView.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

@IBDesignable
class TransparentView: UIView {
    
    @IBInspectable var isDarkTransparentView: Bool = false {
        didSet {
            if isDarkTransparentView {
                self.backgroundColor = UIColor.black.withAlphaComponent(0.6)
            }
        }
    }
    
    @IBInspectable var isLightTransparentView: Bool = false {
        didSet {
            if isLightTransparentView {
                self.backgroundColor = UIColor.white.withAlphaComponent(0.6)
            }
        }
    }
    
    @IBInspectable var hasRoundedCorners: Bool = false {
        didSet {
            if hasRoundedCorners {
                self.layer.cornerRadius = 20
            }
        }
    }
}
