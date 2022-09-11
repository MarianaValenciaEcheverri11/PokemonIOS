//
//  VersionDetail.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class VersionDetail: Codable {
    let rarity: Int?
    let version: Specie?

    init(rarity: Int?, version: Specie?) {
        self.rarity = rarity
        self.version = version
    }
}
