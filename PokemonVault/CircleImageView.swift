//
//  CircleImageView.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImageView: UIImageView {

    @IBInspectable var isCircleView: Bool = false {
        didSet {
            if isCircleView {
                self.layer.cornerRadius = self.frame.width / 2
                self.clipsToBounds = true
            }
        }
    }
    
    @IBInspectable var hasBlurEffect: Bool = false {
        didSet {
            if hasBlurEffect {
                let blurEffect = UIBlurEffect(style: .dark)
                let blurredEffectView = UIVisualEffectView(effect: blurEffect)
                blurredEffectView.frame = self.bounds
                self.addSubview(blurredEffectView)
            }
        }
    }
    
}
