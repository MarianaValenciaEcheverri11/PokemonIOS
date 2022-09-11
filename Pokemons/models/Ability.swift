//
//  Ability.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Ability: Codable {
    let ability: Specie?
    let isHidden: Bool?
    let slot: Int?


    init(ability: Specie?, isHidden: Bool?, slot: Int?) {
        self.ability = ability
        self.isHidden = isHidden
        self.slot = slot
    }
}
