//
//  PokemonDetailsViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/21.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: BaseViewController {
    
    @IBOutlet var heightValueLabel: UILabel?
    @IBOutlet var weightValueLabel: UILabel?
    @IBOutlet var baseExperienceValueLabel: UILabel?
    @IBOutlet var baseStatisticValueLabel: UILabel?
    @IBOutlet var baseExperienceStatNameLabel: UILabel?
    @IBOutlet var baseExperienceStatSlier: UISlider?
    @IBOutlet var abilityNameLabel: UILabel?
    
    @IBOutlet weak var pokemonImageView: CircleImageView? {
        didSet {
            pokemonImageView?.downloadImage(imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemonModel?.pokemonDetailsUrl?.extractPokemonID() ?? "").png")
        }
    }
    
    private var pokemonModel: PokemonModel?
    lazy var viewModel = PokemonDetailsViewModel(interactor: PokemonDetailsInteractor(),
                                                 pokemonDetailsUrl: pokemonModel?.pokemonDetailsUrl ?? "",
                                                 delegate: self)
    
    func set(pokemonModel model: PokemonModel) {
        self.pokemonModel = model
    }
    
    func updateViewContent() {
        self.heightValueLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.height ?? 0)
        self.weightValueLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.weight ?? 0)
        self.baseExperienceValueLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.baseExperience ?? 0)
        self.baseStatisticValueLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.statistics.first?.baseStat ?? 0)
        self.baseExperienceStatNameLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.statistics.first?.stat.name ?? "")
        self.abilityNameLabel?.text = String(describing: self.viewModel.pokemonDetailsModel?.abilities.first?.ability.name ?? "")
        //self.baseExperienceStatSlier?.value = Float(exactly: ((self.viewModel.pokemonDetailsModel?.statistics.first?.baseStat)!/100) ) ?? 0.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = pokemonModel?.name
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showLoadingIndicator(shouldShow: true)
        viewModel.fetchPokemonDetails()
    }
    
    override func refreshViewContents() {
        showLoadingIndicator(shouldShow: false)
        DispatchQueue.main.async {
            self.updateViewContent()
        }
    }
}
