//
//  PokemonDetailsViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/21.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: BaseViewController {
    @IBOutlet var abilitiesStackView: UIStackView!
    @IBOutlet var statisticsStackView: UIStackView!
    @IBOutlet var heightValueLabel: UILabel!
    @IBOutlet var weightValueLabel: UILabel!
    @IBOutlet var baseExperienceValueLabel: UILabel!
    @IBOutlet var baseStatisticValueLabel: UILabel!
    @IBOutlet var baseExperienceStatNameLabel: UILabel!
    @IBOutlet var abilityNameLabel: UILabel!
    @IBOutlet var heightLineItemView: LineItemView!
    @IBOutlet var weightLineItemView: LineItemView!
    @IBOutlet var experienceItemView: LineItemView!
    
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
    
    private func updateViewContent() {
        heightLineItemView.populate(text: ("Height", String(describing: self.viewModel.pokemonDetailsModel?.height ?? 0)))
        weightLineItemView.populate(text: ("Weight", String(describing: self.viewModel.pokemonDetailsModel?.weight ?? 0)))
        experienceItemView.populate(text: ("Base Experience", String(describing: self.viewModel.pokemonDetailsModel?.baseExperience ?? 0)))
        self.updateStatistics(statistics: viewModel.pokemonStatistics())
        self.updateAbilities(abilities: viewModel.pokemonAbilities())
    }
    
    private func updateAbilities(abilities: [Ability]) {
        for ability in abilities {
            let lineItemView = LineItemView()
            lineItemView.populate(text: (ability.ability.name, ""))
            abilitiesStackView.addArrangedSubview(lineItemView)
        }
    }
    
    private func updateStatistics(statistics: [Statistic]) {
        for statistic in statistics {
            let lineItemView = LineItemView()
            lineItemView.populate(text: (statistic.stat.name, String(describing: statistic.baseStat)))
            statisticsStackView.addArrangedSubview(lineItemView)
        }
    }
}

