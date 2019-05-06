//
//  HomeViewController.swift
//  PokemonVault
//
//  Created by Mbalenhle Ndaba on 2019/04/19.
//  Copyright © 2019 Mbalenhle. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    @IBOutlet weak var pokemonCollectionView: UICollectionView? {
        didSet {
            pokemonCollectionView?.delegate = self
            pokemonCollectionView?.dataSource = self
        }
    }
    
    lazy var viewModel = HomeViewModel(decorator: PokemonListInteractorCacheDecorator(),
                                       delegate: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "PokePedia"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showLoadingIndicator(shouldShow: true)
        viewModel.fetchPokemonList()
    }
    
    override func refreshViewContents() {
        DispatchQueue.main.async { [weak self] in
            self?.showLoadingIndicator(shouldShow: false)
            self?.pokemonCollectionView?.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PokemonDetailsSegue" {
            if let pokemonDetailsViewController = segue.destination as? PokemonDetailsViewController {
                guard let pokemonModel = sender as? PokemonModel else { return }
                pokemonDetailsViewController.set(pokemonModel: pokemonModel)
            }
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "PokemonDetailsSegue", sender: viewModel.pokemon(at: indexPath.item))
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.pokemons?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let pokemonCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCell",
                                                                   for: indexPath) as? PokemonCell else {
            return UICollectionViewCell()
        }
        
        if let pokemon = viewModel.pokemon(at: indexPath.item) {
            pokemonCell.populateCell(with: pokemon)
        }
        return pokemonCell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}

