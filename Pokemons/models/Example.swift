//
//  Example.swift
//  Pokemons
//
//  Created by Mariana on 9/09/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let version = try? newJSONDecoder().decode(Version.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseVersion { response in
//     if let version = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - Version
class Version: Codable {
    let abilities: [Ability1]?
    let baseExperience: Int?
    let forms: [Species1]?
    let gameIndices: [GameIndex1]?
    let height: Int?
    let heldItems: [HeldItem1]?
    let id: Int?
    let isDefault: Bool?
    let locationAreaEncounters: String?
    let moves: [Move1]?
    let name: String?
    let order: Int?
    let pastTypes: [JSONAny]?
    let species: Species1?
    let sprites: Sprites1?
    let stats: [Stat1]?
    let types: [TypeElement1]?
    let weight: Int?

    enum CodingKeys: String, CodingKey {
        case abilities
        case baseExperience
        case forms
        case gameIndices
        case height
        case heldItems
        case id
        case isDefault
        case locationAreaEncounters
        case moves, name, order
        case pastTypes
        case species, sprites, stats, types, weight
    }

    init(abilities: [Ability1]?, baseExperience: Int?, forms: [Species1]?, gameIndices: [GameIndex1]?, height: Int?, heldItems: [HeldItem1]?, id: Int?, isDefault: Bool?, locationAreaEncounters: String?, moves: [Move1]?, name: String?, order: Int?, pastTypes: [JSONAny]?, species: Species1?, sprites: Sprites1?, stats: [Stat1]?, types: [TypeElement1]?, weight: Int?) {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAbility { response in
//     if let ability = response.result.value {
//       ...
//     }
//   }

// MARK: - Ability
class Ability1: Codable {
    let ability: Species1?
    let isHidden: Bool?
    let slot: Int?

    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden
        case slot
    }

    init(ability: Species1?, isHidden: Bool?, slot: Int?) {
        self.ability = ability
        self.isHidden = isHidden
        self.slot = slot
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseSpecies { response in
//     if let species = response.result.value {
//       ...
//     }
//   }

// MARK: - Species
class Species1: Codable {
    let name: String?
    let url: String?

    init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGameIndex { response in
//     if let gameIndex = response.result.value {
//       ...
//     }
//   }

// MARK: - GameIndex
class GameIndex1: Codable {
    let gameIndex: Int?
    let version: Species1?

    enum CodingKeys: String, CodingKey {
        case gameIndex
        case version
    }

    init(gameIndex: Int?, version: Species1?) {
        self.gameIndex = gameIndex
        self.version = version
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseHeldItem { response in
//     if let heldItem = response.result.value {
//       ...
//     }
//   }

// MARK: - HeldItem
class HeldItem1: Codable {
    let item: Species1?
    let versionDetails: [VersionDetail1]?

    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails
    }

    init(item: Species1?, versionDetails: [VersionDetail1]?) {
        self.item = item
        self.versionDetails = versionDetails
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseVersionDetail { response in
//     if let versionDetail = response.result.value {
//       ...
//     }
//   }

// MARK: - VersionDetail
class VersionDetail1: Codable {
    let rarity: Int?
    let version: Species1?

    init(rarity: Int?, version: Species1?) {
        self.rarity = rarity
        self.version = version
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMove { response in
//     if let move = response.result.value {
//       ...
//     }
//   }

// MARK: - Move
class Move1: Codable {
    let move: Species1?
    let versionGroupDetails: [VersionGroupDetail1]?

    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails
    }

    init(move: Species1?, versionGroupDetails: [VersionGroupDetail1]?) {
        self.move = move
        self.versionGroupDetails = versionGroupDetails
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseVersionGroupDetail { response in
//     if let versionGroupDetail = response.result.value {
//       ...
//     }
//   }

// MARK: - VersionGroupDetail
class VersionGroupDetail1: Codable {
    let levelLearnedAt: Int?
    let moveLearnMethod, versionGroup: Species1?

    enum CodingKeys: String, CodingKey {
        case levelLearnedAt
        case moveLearnMethod
        case versionGroup
    }

    init(levelLearnedAt: Int?, moveLearnMethod: Species1?, versionGroup: Species1?) {
        self.levelLearnedAt = levelLearnedAt
        self.moveLearnMethod = moveLearnMethod
        self.versionGroup = versionGroup
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationV { response in
//     if let generationV = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationV
class GenerationV1: Codable {
    let blackWhite: Sprites1?

    enum CodingKeys: String, CodingKey {
        case blackWhite
    }

    init(blackWhite: Sprites1?) {
        self.blackWhite = blackWhite
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationIv { response in
//     if let generationIv = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationIv
class GenerationIv1: Codable {
    let diamondPearl, heartgoldSoulsilver, platinum: Sprites1?

    enum CodingKeys: String, CodingKey {
        case diamondPearl
        case heartgoldSoulsilver
        case platinum
    }

    init(diamondPearl: Sprites1?, heartgoldSoulsilver: Sprites1?, platinum: Sprites1?) {
        self.diamondPearl = diamondPearl
        self.heartgoldSoulsilver = heartgoldSoulsilver
        self.platinum = platinum
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseVersions { response in
//     if let versions = response.result.value {
//       ...
//     }
//   }

// MARK: - Versions
class Versions1: Codable {
    let generationI: GenerationI1?
    let generationIi: GenerationIi1?
    let generationIii: GenerationIii1?
    let generationIv: GenerationIv1?
    let generationV: GenerationV1?
    let generationVi: [String: Home1]?
    let generationVii: GenerationVii1?
    let generationViii: GenerationViii1?

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

    init(generationI: GenerationI1?, generationIi: GenerationIi1?, generationIii: GenerationIii1?, generationIv: GenerationIv1?, generationV: GenerationV1?, generationVi: [String: Home1]?, generationVii: GenerationVii1?, generationViii: GenerationViii1?) {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseSprites { response in
//     if let sprites = response.result.value {
//       ...
//     }
//   }

// MARK: - Sprites
class Sprites1: Codable {
    let backDefault: String?
    let backFemale: JSONNull?
    let backShiny: String?
    let backShinyFemale: JSONNull?
    let frontDefault: String?
    let frontFemale: JSONNull?
    let frontShiny: String?
    let frontShinyFemale: JSONNull?
    let other: Other1?
    let versions: Versions1?
    let animated: Sprite?

    enum CodingKeys: String, CodingKey {
        case backDefault
        case backFemale
        case backShiny
        case backShinyFemale
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
        case other, versions, animated
    }

    init(backDefault: String?, backFemale: JSONNull?, backShiny: String?, backShinyFemale: JSONNull?, frontDefault: String?, frontFemale: JSONNull?, frontShiny: String?, frontShinyFemale: JSONNull?, other: Other1?, versions: Versions1?, animated: Sprite?) {
        self.backDefault = backDefault
        self.backFemale = backFemale
        self.backShiny = backShiny
        self.backShinyFemale = backShinyFemale
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
        self.frontShiny = frontShiny
        self.frontShinyFemale = frontShinyFemale
        self.other = other
        self.versions = versions
        self.animated = animated
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationI { response in
//     if let generationI = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationI
class GenerationI1: Codable {
    let redBlue, yellow: RedBlue1?

    enum CodingKeys: String, CodingKey {
        case redBlue
        case yellow
    }

    init(redBlue: RedBlue1?, yellow: RedBlue1?) {
        self.redBlue = redBlue
        self.yellow = yellow
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseRedBlue { response in
//     if let redBlue = response.result.value {
//       ...
//     }
//   }

// MARK: - RedBlue
class RedBlue1: Codable {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationIi { response in
//     if let generationIi = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationIi
class GenerationIi1: Codable {
    let crystal: Crystal1?
    let gold, silver: Gold1?

    init(crystal: Crystal1?, gold: Gold1?, silver: Gold1?) {
        self.crystal = crystal
        self.gold = gold
        self.silver = silver
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseCrystal { response in
//     if let crystal = response.result.value {
//       ...
//     }
//   }

// MARK: - Crystal
class Crystal1: Codable {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGold { response in
//     if let gold = response.result.value {
//       ...
//     }
//   }

// MARK: - Gold
class Gold1: Codable {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationIii { response in
//     if let generationIii = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationIii
class GenerationIii1: Codable {
    let emerald: Emerald1?
    let fireredLeafgreen, rubySapphire: Gold1?

    enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen
        case rubySapphire
    }

    init(emerald: Emerald1?, fireredLeafgreen: Gold1?, rubySapphire: Gold1?) {
        self.emerald = emerald
        self.fireredLeafgreen = fireredLeafgreen
        self.rubySapphire = rubySapphire
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseEmerald { response in
//     if let emerald = response.result.value {
//       ...
//     }
//   }

// MARK: - Emerald
class Emerald1: Codable {
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

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseHome { response in
//     if let home = response.result.value {
//       ...
//     }
//   }

// MARK: - Home
class Home1: Codable {
    let frontDefault: String?
    let frontFemale: JSONNull?
    let frontShiny: String?
    let frontShinyFemale: JSONNull?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
        case frontShiny
        case frontShinyFemale
    }

    init(frontDefault: String?, frontFemale: JSONNull?, frontShiny: String?, frontShinyFemale: JSONNull?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
        self.frontShiny = frontShiny
        self.frontShinyFemale = frontShinyFemale
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationVii { response in
//     if let generationVii = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationVii
class GenerationVii1: Codable {
    let icons: DreamWorld1?
    let ultraSunUltraMoon: Home1?

    enum CodingKeys: String, CodingKey {
        case icons
        case ultraSunUltraMoon
    }

    init(icons: DreamWorld1?, ultraSunUltraMoon: Home1?) {
        self.icons = icons
        self.ultraSunUltraMoon = ultraSunUltraMoon
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseDreamWorld { response in
//     if let dreamWorld = response.result.value {
//       ...
//     }
//   }

// MARK: - DreamWorld
class DreamWorld1: Codable {
    let frontDefault: String?
    let frontFemale: JSONNull?

    enum CodingKeys: String, CodingKey {
        case frontDefault
        case frontFemale
    }

    init(frontDefault: String?, frontFemale: JSONNull?) {
        self.frontDefault = frontDefault
        self.frontFemale = frontFemale
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGenerationViii { response in
//     if let generationViii = response.result.value {
//       ...
//     }
//   }

// MARK: - GenerationViii
class GenerationViii1: Codable {
    let icons: DreamWorld1?

    init(icons: DreamWorld1?) {
        self.icons = icons
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseOther { response in
//     if let other = response.result.value {
//       ...
//     }
//   }

// MARK: - Other
class Other1: Codable {
    let dreamWorld: DreamWorld1?
    let home: Home1?
    let officialArtwork: OfficialArtwork1?

    enum CodingKeys: String, CodingKey {
        case dreamWorld
        case home
        case officialArtwork
    }

    init(dreamWorld: DreamWorld1?, home: Home1?, officialArtwork: OfficialArtwork1?) {
        self.dreamWorld = dreamWorld
        self.home = home
        self.officialArtwork = officialArtwork
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseOfficialArtwork { response in
//     if let officialArtwork = response.result.value {
//       ...
//     }
//   }

// MARK: - OfficialArtwork
class OfficialArtwork1: Codable {
    let frontDefault: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault
    }

    init(frontDefault: String?) {
        self.frontDefault = frontDefault
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseStat { response in
//     if let stat = response.result.value {
//       ...
//     }
//   }

// MARK: - Stat
class Stat1: Codable {
    let baseStat, effort: Int?
    let stat: Species1?

    enum CodingKeys: String, CodingKey {
        case baseStat
        case effort, stat
    }

    init(baseStat: Int?, effort: Int?, stat: Species1?) {
        self.baseStat = baseStat
        self.effort = effort
        self.stat = stat
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseTypeElement { response in
//     if let typeElement = response.result.value {
//       ...
//     }
//   }

// MARK: - TypeElement
class TypeElement1: Codable {
    let slot: Int?
    let type: Species1?

    init(slot: Int?, type: Species1?) {
        self.slot = slot
        self.type = type
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Alamofire response handlers

extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }

            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }

            return Result { try newJSONDecoder().decode(T.self, from: data) }
        }
    }

    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }

    @discardableResult
    func responseVersion(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Version>) -> Void) -> Self {
        return responseDecodable(queue: queue, completionHandler: completionHandler)
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

