//
//  Pokemon.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pokemon = try? newJSONDecoder().decode(Pokemon.self, from: jsonData)

import Foundation

class Pokemon: Codable {
    var abilities: [Ability]?
    var baseExperience: Int?
    var forms: [Specie]?
    var gameIndices: [GameIndex]?
    var height: Int?
    var heldItems: [HeldItem]?
    var id: Int?
    var isDefault: Bool?
    var locationAreaEncounters: String?
    var moves: [Move]?
    var name: String?
    var order: Int?
    var pastTypes: [String]?
    var species: Specie?
    var sprites: Sprite?
    var stats: [Stat]?
    var types: [TypeElement]?
    var weight: Int?

    init(abilities: [Ability]?, baseExperience: Int?, forms: [Specie]?, gameIndices: [GameIndex]?, height: Int?, heldItems: [HeldItem]?, id: Int?, isDefault: Bool?, locationAreaEncounters: String?, moves: [Move]?, name: String?, order: Int?, pastTypes: [String]?, species: Specie?, sprites: Sprite?, stats: [Stat]?, types: [TypeElement]?, weight: Int?) {
        self.abilities = abilities
        self.baseExperience = baseExperience
        self.forms = forms
        self.gameIndices = gameIndices
        self.height = height
        self.heldItems = heldItems
        self.id = id
        self.isDefault = isDefault
        self.locationAreaEncounters = locationAreaEncounters
        self.moves = moves
        self.name = name
        self.order = order
        self.pastTypes = pastTypes
        self.species = species
        self.sprites = sprites
        self.stats = stats
        self.types = types
        self.weight = weight
    }
}

class Other: Codable {
    let dreamWorld: DreamWorld?
    let home: Home?
    let officialArtwork: OfficialArtwork?

    init(dreamWorld: DreamWorld?, home: Home?, officialArtwork: OfficialArtwork?) {
        self.dreamWorld = dreamWorld
        self.home = home
        self.officialArtwork = officialArtwork
    }
}


