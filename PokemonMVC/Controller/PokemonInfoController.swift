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
            imageView.image = pokemon?.image
            infoLabel.text = pokemon?.description
            infoView.pokemon = pokemon
        }
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let infoView: InfoView = {
        let view = InfoView()
        view.configureViewForInfoController()
        return view
    }()
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewComponents()
    }
    
    // MARK: - Helper Functions
    
    func configureViewComponents() {
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        imageView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 44, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
        
        view.addSubview(infoLabel)
        infoLabel.anchor(top: nil, left: imageView.rightAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 44, paddingLeft: 16, paddingBottom: 0, paddingRight: -4, width: 0, height: 0)
        infoLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        
        view.addSubview(infoView)
        infoView.anchor(top: infoLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 200)
        
        guard let pokemon = self.pokemon else { return }
         
    }
}
