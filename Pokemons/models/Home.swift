//
//  Home.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Home: Codable {
    var frontDefault: String?
    var frontFemale: String?
    var frontShiny: String?
    var frontShinyFemale: String?

    init(frontDefault: String?, frontFemale: String?, frontShiny: String?, frontShinyFemale: String?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
        self.frontShiny = frontShiny
        self.frontShinyFemale = frontShinyFemale
    }
}
