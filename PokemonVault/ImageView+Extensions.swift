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
        let imageCache = NSCache<AnyObject, AnyObject>()
        guard let url = URL(string: imageUrl) else { return }
        self.image = UIImage(named: "pokemonBall")
        
        if let imageFromCache = imageCache.object(forKey: imageUrl as AnyObject) as? UIImage {
            self.image = imageFromCache
        } else {
            
            session.fetchData(from: url) { (data, error) in
                DispatchQueue.main.async { [weak self] in
                    guard let data = data else {
                        self?.image = UIImage(named: "pokemon-ball")
                        return
                    }
                    
                    if let imageToCache = UIImage(data:data) {
                        imageCache.setObject(imageToCache, forKey: imageUrl as AnyObject)
                        UIView.animate(withDuration: 0.3, animations: {
                            self?.image = imageToCache
                        })
                    }
                }
            }
        }
    }
}
