//
//  Screen.swift
//  Game
//
//  Created by Szymon Lorenz on 10/2/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import SpriteKit

struct Screen {
    static var scale: CGFloat {
        #if os(iOS) || os(tvOS)
        return UIScreen.main.scale
        #elseif os(OSX)
        return  NSScreen.main?.backingScaleFactor ?? 1
        #endif
    }
    
    static var tileSize: CGSize {
        #if os(iOS) || os(tvOS)
        return CGSize(width: 128, height: 128)
        #elseif os(OSX)
        return CGSize(width: 128, height: 128)
        #endif
    }
}
