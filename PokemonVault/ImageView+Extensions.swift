//
//  ImageView+Extensions.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/23.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func downloadImage(imageUrl: String) {
        let session: NetworkSession = URLSession.shared
        guard let url = URL(string: imageUrl) else { return }
        
        session.fetchData(from: url) { (data, error) in
            DispatchQueue.main.async { [weak self] in
                guard let data = data else {
                    self?.image = UIImage(named: "pokemon-ball")
                    return
                }
                
                UIView.animate(withDuration: 0.3, animations: {
                    self?.image = UIImage(data: data)
                })
            }
        }
    }
}
