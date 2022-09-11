//
//  GenerationII.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationIi: Codable {
    let crystal: Crystal?
    let gold, silver: Gold?

    init(crystal: Crystal?, gold: Gold?, silver: Gold?) {
        self.crystal = crystal
        self.gold = gold
        self.silver = silver
    }
}
