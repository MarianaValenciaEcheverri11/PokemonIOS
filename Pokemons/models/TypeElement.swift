//
//  TypeElement.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class TypeElement: Codable {
    let slot: Int?
    let type: Specie?

    init(slot: Int?, type: Specie?) {
        self.slot = slot
        self.type = type
    }
}
