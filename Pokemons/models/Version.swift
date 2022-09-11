//
//  Version.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class Versions: Codable {
    var generationI: GenerationI?
    var generationIi: GenerationIi?
    var generationIii: GenerationIii?
    var generationIv: GenerationIv?
    var generationV: GenerationV?
    var generationVi: [String: Home]?
    var generationVii: GenerationVii?
    var generationViii: GenerationViii?

    enum CodingKeys: String, CodingKey {
        case generationI
        case generationIi
        case generationIii
        case generationIv
        case generationV
        case generationVi
        case generationVii
        case generationViii
    }

    init(generationI: GenerationI?, generationIi: GenerationIi?, generationIii: GenerationIii?, generationIv: GenerationIv?, generationV: GenerationV?, generationVi: [String: Home]?, generationVii: GenerationVii?, generationViii: GenerationViii?) {
        self.generationI = generationI
        self.generationIi = generationIi
        self.generationIii = generationIii
        self.generationIv = generationIv
        self.generationV = generationV
        self.generationVi = generationVi
        self.generationVii = generationVii
        self.generationViii = generationViii
    }
}
class RedBlue: Codable {
    let backDefault, backGray, backTransparent, frontDefault: String?
    let frontGray, frontTransparent: String?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backGray
        case backTransparent
        case frontDefault
        case frontGray
        case frontTransparent
    }

    init(backDefault: String?, backGray: String?, backTransparent: String?, frontDefault: String?, frontGray: String?, frontTransparent: String?) {
        self.backDefault = backDefault
        self.backGray = backGray
        self.backTransparent = backTransparent
        self.frontDefault = frontDefault
        self.frontGray = frontGray
        self.frontTransparent = frontTransparent
    }
}
class Crystal: Codable {
    let backDefault, backShiny, backShinyTransparent, backTransparent: String?
    let frontDefault, frontShiny, frontShinyTransparent, frontTransparent: String?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backShiny
        case backShinyTransparent
        case backTransparent
        case frontDefault
        case frontShiny
        case frontShinyTransparent
        case frontTransparent
    }

    init(backDefault: String?, backShiny: String?, backShinyTransparent: String?, backTransparent: String?, frontDefault: String?, frontShiny: String?, frontShinyTransparent: String?, frontTransparent: String?) {
        self.backDefault = backDefault
        self.backShiny = backShiny
        self.backShinyTransparent = backShinyTransparent
        self.backTransparent = backTransparent
        self.frontDefault = frontDefault
        self.frontShiny = frontShiny
        self.frontShinyTransparent = frontShinyTransparent
        self.frontTransparent = frontTransparent
    }
}
class Gold: Codable {
    let backDefault, backShiny, frontDefault, frontShiny: String?
    let frontTransparent: String?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backShiny
        case frontDefault
        case frontShiny
        case frontTransparent
    }

    init(backDefault: String?, backShiny: String?, frontDefault: String?, frontShiny: String?, frontTransparent: String?) {
        self.backDefault = backDefault
        self.backShiny = backShiny
        self.frontDefault = frontDefault
        self.frontShiny = frontShiny
        self.frontTransparent = frontTransparent
    }
}

class Emerald: Codable {
    let frontDefault, frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontShiny
    }

    init(frontDefault: String?, frontShiny: String?) {
        self.frontDefault = frontDefault
        self.frontShiny = frontShiny
    }
}
