//
//  Stat.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Stat: Codable {
    let baseStat, effort: Int?
    let stat: Specie?

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort, stat
    }

    init(baseStat: Int?, effort: Int?, stat: Specie?) {
        self.baseStat = baseStat
        self.effort = effort
        self.stat = stat
    }
}
