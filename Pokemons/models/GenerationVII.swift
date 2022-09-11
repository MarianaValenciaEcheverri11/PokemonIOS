//
//  GenerationVII.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationVii: Codable {
    let icons: DreamWorld?
    let ultraSunUltraMoon: Home?

    enum CodingKeys: String, CodingKey {
        case icons
        case ultraSunUltraMoon
    }

    init(icons: DreamWorld?, ultraSunUltraMoon: Home?) {
        self.icons = icons
        self.ultraSunUltraMoon = ultraSunUltraMoon
    }
}
