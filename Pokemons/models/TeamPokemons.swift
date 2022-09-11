//
//  TeamPokemons.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation

class TeamPokemons: Codable {
    var count: Int?
    var next, previous: String?
    var results: [Specie]?

    init(count: Int?, next: String?, previous: String?, results: [Specie]?) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }
}




