//
//  GenerationIV.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationIv: Codable {
    let diamondPearl, heartgoldSoulsilver, platinum: Sprite?

    enum CodingKeys: String, CodingKey {
        case diamondPearl
        case heartgoldSoulsilver
        case platinum
    }

    init(diamondPearl: Sprite?, heartgoldSoulsilver: Sprite, platinum: Sprite?) {
        self.diamondPearl = diamondPearl
        self.heartgoldSoulsilver = heartgoldSoulsilver
        self.platinum = platinum
    }
}
