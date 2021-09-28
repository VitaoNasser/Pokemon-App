//
//  PokedexController.swift
//  PokemonMVC
//
//  Created by Rodrigo Dias on 28/09/21.
//

import UIKit

private let reuseIdentifier = "pokedexCell"

class PokedexController: UICollectionViewController {

    // MARK: - Properties

    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewComponents()
    }
    
    // MARK: - Selectors
    
    @objc func showSearchBar() {
        print(124)
    }
    
    // MARK: - Helper functions
    
    func configureViewComponents() {
        collectionView.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .mainPink()
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = false
        
        navigationItem.title = "Pokedex"
        let textAtributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAtributes
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(showSearchBar))
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        collectionView.register(PokedexCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
}

extension PokedexController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PokedexCell
        cell.backgroundColor = .blue
        return cell
    }
}

extension PokedexController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 32, left: 8, bottom: 8, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (view.frame.width - 36) / 3
        return CGSize(width: width, height: width)
        
        
    }
    
}

