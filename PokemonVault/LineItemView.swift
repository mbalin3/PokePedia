//
//  LineItemView.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/02.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

@IBDesignable
class LineItemView: UIView {
    
    @IBOutlet private var contentTextLabel: UILabel!
    @IBOutlet private var lineTitleLabel: UILabel!
    @IBOutlet private var lineImageView: UIImageView!
    @IBOutlet private var backgroundView: TransparentView!
    
    @IBInspectable var shouldShowImage: Bool = false {
        didSet {
            lineImageView.isHidden = !shouldShowImage
        }
    }
    
    @IBInspectable var titleText: String = "" {
        didSet {
            lineTitleLabel.text = titleText
        }
    }
    
    @IBInspectable var contentText: String = "" {
        didSet {
            contentTextLabel.text = contentText
        }
    }
    
    @IBInspectable var isDarkTransparentBackground: Bool = false {
        didSet {
            if isDarkTransparentBackground {
                backgroundView.isDarkTransparentView = isDarkTransparentBackground
            } else {
                backgroundView.isLightTransparentView = true
                lineTitleLabel.textColor = UIColor.black
                contentTextLabel.textColor = UIColor.black
            }
        }
    }
    
    convenience init() {
        self.init(frame: .zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViewFromNib(name: "LineItemView")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupViewFromNib(name: "LineItemView")
    }
}
