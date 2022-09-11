//
//  GenerationI.swift
//  Pokemons
//
//  Created by Mariana on 11/09/22.
//

import Foundation
class GenerationI: Codable {
    let redBlue, yellow: RedBlue?

    enum CodingKeys: String, CodingKey {
        case redBlue
        case yellow
    }

    init(redBlue: RedBlue?, yellow: RedBlue?) {
        self.redBlue = redBlue
        self.yellow = yellow
    }
}
