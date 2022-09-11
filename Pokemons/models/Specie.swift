//
//  Specie.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Specie: Codable {
    var name: String?
    var url: String?

    init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}
