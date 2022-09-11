//
//  Move.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Move: Codable {
    var move: Specie?
    var versionGroupDetails: [VersionGroupDetail]?


    init(move: Specie?, versionGroupDetails: [VersionGroupDetail]?) {
        self.move = move
        self.versionGroupDetails = versionGroupDetails
    }
}
