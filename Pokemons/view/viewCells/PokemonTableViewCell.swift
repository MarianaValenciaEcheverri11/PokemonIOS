//
//  PokemonTableViewCell.swift
//  Pokemons
//
//  Created by Mariana on 8/09/22.
//

import UIKit
import Kingfisher
class PokemonTableViewCell: UITableViewCell{
    @IBOutlet weak var labelNamePokemon: UILabel!
 //   @IBOutlet weak var imageViewPokemon: UIImageView!
    @IBOutlet weak var imagePokemon: UIImageView!
    
    var pokemon: Pokemon!
    var specie: Specie!
    var urlImagePokemon: String!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setCell(specie: Specie) {
        self.specie = specie
        labelNamePokemon.text = specie.name
        var numberPokemon = specie.url?.components(separatedBy: "pokemon/")
        numberPokemon = numberPokemon?[1].components(separatedBy: "/")
        let url = Apis.imagePokemon + numberPokemon![0] + ".png"
        descargarImagen(url: url )
       
    }
    
    func descargarImagen(url: String){
        imagePokemon.kf.indicatorType = .activity
        imagePokemon.kf.setImage(with: URL(string: url), options: [.transition(.fade(1)), .keepCurrentImageWhileLoading])
        if imagePokemon.image == nil
       {
            imagePokemon.image = UIImage(named: "pokemon")
        }
    }
    
    func resetCell(){
        labelNamePokemon.text = ""
    }

    
}
