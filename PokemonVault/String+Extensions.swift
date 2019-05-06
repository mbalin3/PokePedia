//
//  String+Extensions.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/25.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

extension String {
    
    func extractPokemonID() -> String? {
        let separatedStringComponent = self.components(separatedBy: "n/").last?.trimmingCharacters(in: CharacterSet(charactersIn: "/ "))
        return separatedStringComponent
    }
}
