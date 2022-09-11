//
//  GenerationV.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationV: Codable {
    let blackWhite: Sprite?

    enum CodingKeys: String, CodingKey {
        case blackWhite
    }

    init(blackWhite: Sprite?) {
        self.blackWhite = blackWhite
    }
}
