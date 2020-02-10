//
//  SKTileGroup.swift
//
//  Created by Szymon Lorenz on 26/1/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import Foundation
import SpriteKit

extension SKTileGroup {
    convenience init(sheet: SpriteSheet, thirteenRules: [(adjacency: SKTileAdjacencyMask, tiles: [Tiles])]) {
        self.init(rules:
            thirteenRules.map {
                SKTileGroupRule(sheet: sheet, adjacency: $0.adjacency, tiles: $0.tiles)
            }
        )
    }
}
