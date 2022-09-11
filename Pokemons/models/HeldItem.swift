//
//  HeldItem.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class HeldItem: Codable {
    let item: Specie?
    let versionDetails: [VersionDetail]?


    init(item: Specie?, versionDetails: [VersionDetail]?) {
        self.item = item
        self.versionDetails = versionDetails
    }
}
