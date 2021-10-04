//
//  PokemonInfoController.swift
//  PokemonMVC
//
//  Created by Rodrigo Dias on 01/10/21.
//

import UIKit

class PokemonInfoController: UIViewController {
    
    // MARK: - Properties
    
    var pokemon: Pokemon? {
        didSet {
            navigationItem.title = pokemon?.name?.capitalized
        }
    }
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewComponents()
    }
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        view.backgroundColor = .white
    }
}
