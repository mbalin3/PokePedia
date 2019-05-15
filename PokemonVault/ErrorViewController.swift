//
//  ErrorViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/15.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class ErrorViewController: BaseViewController {

    @IBOutlet weak var errorTitleLabel: BaseLabel!
    @IBOutlet weak var errorImageView: UIImageView!
    @IBOutlet weak var errorDescriptionLabel: BaseLabel!
    private var contentModel: ErrorContentModel?
    
    @IBOutlet weak var backToNomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.populate(with: self.contentModel)
    }
    
    func set(with contentModel: ErrorContentModel) {
        self.contentModel = contentModel
    }
    
    @IBAction func backToHome(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    private func populate(with contentModel: ErrorContentModel?) {
        guard let contentModel = contentModel else { return }
        errorTitleLabel.text = contentModel.errorTitle ?? "Error"
        errorDescriptionLabel.text = contentModel.errorDescription ?? ""
        errorImageView.image = UIImage(named: contentModel.errorImageName ?? "error-icon")
    }
}
