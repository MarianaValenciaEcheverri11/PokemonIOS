//
//  VersionGroupDetail.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
class VersionGroupDetail: Codable {
    var levelLearnedAt: Int?
    var moveLearnMethod, versionGroup: Specie?


    init(levelLearnedAt: Int?, moveLearnMethod: Specie?, versionGroup: Specie?) {
        self.levelLearnedAt = levelLearnedAt
        self.moveLearnMethod = moveLearnMethod
        self.versionGroup = versionGroup
    }
}
