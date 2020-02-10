//
//  SKTileDefinition.swift
//
//  Created by Szymon Lorenz on 26/1/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import Foundation
import SpriteKit

extension SKTileDefinition {
    convenience init?(sheet: SpriteSheet, column: Int, row: Int, placementWeight: Int = 1) {
        guard let texture = sheet.textureForColumn(column: column, row: row) else {
            print("⛔️ SKTileDefinition: texture for column: \(column), row: \(row) returned nil.")
            return nil
        }
        self.init(texture: texture)
        self.placementWeight = placementWeight
    }
    
    convenience init(sheet: SpriteSheet, textures: [(column: Int, row: Int)], timePerFrame: CGFloat, placementWeight: Int = 1) {
        let textures = textures.compactMap({ sheet.textureForColumn(column: $0.column, row: $0.row) })
        self.init(textures: textures, size: CGSize(width: Screen.tileSize.width, height: Screen.tileSize.height), timePerFrame: timePerFrame)
        self.placementWeight = placementWeight
    }
}
