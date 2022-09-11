//
//  GenerationIII.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationIii: Codable {
    let emerald: Emerald?
    let fireredLeafgreen, rubySapphire: Gold?

    enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen
        case rubySapphire
    }

    init(emerald: Emerald?, fireredLeafgreen: Gold?, rubySapphire: Gold?) {
        self.emerald = emerald
        self.fireredLeafgreen = fireredLeafgreen
        self.rubySapphire = rubySapphire
    }
}
