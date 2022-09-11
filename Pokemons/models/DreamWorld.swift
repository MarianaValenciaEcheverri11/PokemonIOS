//
//  DreamWorld.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class DreamWorld: Codable {
    var frontDefault: String?
    var frontFemale: String?


    init(frontDefault: String?, frontFemale: String?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
    }
}
