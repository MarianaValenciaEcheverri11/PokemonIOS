//
//  PokemonCollectionViewCell.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import UIKit

class PokemonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    @IBOutlet weak var namePokemon: UILabel!
    var pokemon: Pokemon!
    var specie: Specie!
    var urlImagePokemon: String!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setCell(specie: Specie) {
        self.specie = specie
        namePokemon.text = specie.name
        var numberPokemon = specie.url?.components(separatedBy: "pokemon/")
        numberPokemon = numberPokemon?[1].components(separatedBy: "/")
        let url = Apis.imagePokemon + numberPokemon![0] + ".png"
        descargarImagen(url: url )
    }
    
    func descargarImagen(url: String){
        pokemonImageView.kf.indicatorType = .activity
        pokemonImageView.kf.setImage(with: URL(string: url), options: [.transition(.fade(1)), .keepCurrentImageWhileLoading])
        if pokemonImageView.image == nil
        {
            pokemonImageView.image = UIImage(named: "pokemon")
        }
    }
}
    
