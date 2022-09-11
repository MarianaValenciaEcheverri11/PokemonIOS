//
//  CollectionPokemonViewCell.swift
//  Pokemons
//
//  Created by Mariana on 10/09/22.
//

import UIKit
class CollectionPokemonViewCell: UICollectionViewCell{
    
  //  @IBOutlet weak var imagePokemon: UIImageView!
    
    
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
        print(specie.name)
        var numberPokemon = specie.url?.components(separatedBy: "pokemon/")
        numberPokemon = numberPokemon?[1].components(separatedBy: "/")
        let url = Apis.imagePokemon + numberPokemon![0] + ".png"
        descargarImagen(url: url )
    }
    
    func descargarImagen(url: String){
        print(url)
       // imagePokemon.kf.indicatorType = .activity
      //  imagePokemon.kf.setImage(with: URL(string: url), options: [.transition(.fade(1)), .keepCurrentImageWhileLoading])
      //  if imagePokemon.image == nil
      // {
      //      imagePokemon.image = UIImage(named: "pokemon")
      //  }
    }
}
    




