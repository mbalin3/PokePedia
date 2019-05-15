//
//  PokemonDetailsViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/21.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: BaseViewController {
    
    @IBOutlet var baseExperienceStatNameLabel: UILabel!
    @IBOutlet var baseExperienceValueLabel: UILabel!
    @IBOutlet var statisticsStackView: UIStackView!
    @IBOutlet var baseStatisticValueLabel: UILabel!
    @IBOutlet var heightLineItemView: LineItemView!
    @IBOutlet var weightLineItemView: LineItemView!
    @IBOutlet var experienceItemView: LineItemView!
    @IBOutlet var abilitiesStackView: UIStackView!
    @IBOutlet var heightValueLabel: UILabel!
    @IBOutlet var weightValueLabel: UILabel!
    @IBOutlet var abilityNameLabel: UILabel!
    private let imageUrlString = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/%@.png"
    
    @IBOutlet weak var pokemonImageView: CircleImageView? {
        didSet {
            pokemonImageView?.downloadImage(imageUrl: String(format: imageUrlString, pokemonModel?.pokemonDetailsUrl?.extractPokemonID() ?? ""))
        }
    }
    
    private var pokemonModel: PokemonData?
    lazy var viewModel = PokemonDetailsViewModel(pokemonDetailsUrl: pokemonModel?.pokemonDetailsUrl ?? "",
                                                 delegate: self)
    
    func set(pokemonModel model: PokemonData) {
        self.pokemonModel = model
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = pokemonModel?.name
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showLoadingIndicator(shouldShow: true)
        viewModel.fetchPokemonDetails(pokemonDetailsUrl: pokemonModel?.pokemonDetailsUrl)
    }
    
    override func refreshViewContents() {
        showLoadingIndicator(shouldShow: false)
        DispatchQueue.main.async { [weak self] in
            self?.updateViewContent()
        }
    }
    
    override func showError(errorMessage: String) {
        DispatchQueue.main.async { [weak self] in
            self?.performSegue(withIdentifier: "showErrorScreenSegue", sender: errorMessage)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showErrorScreenSegue" {
            guard let errorViewController = segue.destination as? ErrorViewController else { return }
            let contentModel = ErrorContentModel(errorTitle: "Pokemon Details",
                                                 errorDescription: sender as? String,
                                                 errorImageName: "error-icon")
            errorViewController.set(with: contentModel)
        }
    }
    
    private func updateViewContent() {
        heightLineItemView.populate(with: ("Height", String(describing: self.viewModel.pokemonDetailsModel?.height ?? 0)))
        weightLineItemView.populate(with: ("Weight", String(describing: self.viewModel.pokemonDetailsModel?.weight ?? 0)))
        experienceItemView.populate(with: ("Base Experience", "\(self.viewModel.pokemonDetailsModel?.baseExperience ?? 0)"))
        self.updateStatistics(statistics: viewModel.pokemonStatistics())
        self.updateAbilities(abilities: viewModel.pokemonAbilities())
    }
    
    private func updateAbilities(abilities: [Ability]) {
        for ability in abilities {
            let lineItemView = LineItemView()
            lineItemView.populate(with: (ability.ability.name, ""))
            abilitiesStackView.addArrangedSubview(lineItemView)
        }
    }
    
    private func updateStatistics(statistics: [Statistic]) {
        for statistic in statistics {
            let lineItemView = LineItemView()
            lineItemView.populate(with: (statistic.stat.name, String(describing: statistic.baseStat)))
            statisticsStackView.addArrangedSubview(lineItemView)
        }
    }
}
