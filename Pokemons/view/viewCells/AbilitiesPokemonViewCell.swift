//
//  AbilitiesPokemonViewCell.swift
//  Pokemons
//
//  Created by Mariana on 9/09/22.
//

import UIKit
import Kingfisher
class AbilitiesPokemonViewCell: UITableViewCell{
    @IBOutlet weak var labelAbility: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setCell(nameAbility: String) {
        labelAbility.text = nameAbility
    }
    
}

