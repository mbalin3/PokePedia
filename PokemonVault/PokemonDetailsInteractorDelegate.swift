//
//  PokemonDetailsInteractorDelegate.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/05/08.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import Foundation

protocol PokemonDetailsInteractorDelegate: class {
    func fetchPokemonDetailsSuccess(successResponse: PokemonDetailsModel?)
    func fetchPokemonDetailsFailure(error: NSError?)
}
