//
//  GameIndex.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class GameIndex: Codable {
    var gameIndex: Int?
    var version: Specie?

    init(gameIndex: Int?, version: Specie?) {
        self.gameIndex = gameIndex
        self.version = version
    }
}
