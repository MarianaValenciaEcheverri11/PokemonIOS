//
//  OfficialArtword.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class OfficialArtwork: Codable {
    var frontDefault: String?

    init(frontDefault: String?) {
        self.frontDefault = frontDefault
    }
}
