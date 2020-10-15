//
//  SceneView.swift
//  Game
//
//  Created by Szymon Lorenz on 15/10/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import Foundation
import SwiftUI
import SpriteKit
#if os(iOS) || os(tvOS)
import UIKit
#elseif os(OSX)
import Cocoa
#endif

struct SceneView {
    let scene: SKScene
}

#if os(iOS) || os(tvOS)
extension SceneView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<SceneView>) -> SKView {
        let skView = SKView()
        skView.presentScene(scene)
        skView.ignoresSiblingOrder = true
        skView.backgroundColor = .clear
        return skView
    }
    
    func updateUIView(_ uiView: SKView, context: UIViewRepresentableContext<SceneView>) {
        
    }
}
#elseif os(OSX)
extension SceneView: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let skView = SKView()
        skView.presentScene(scene)
        skView.ignoresSiblingOrder = true
        skView.allowsTransparency = true
        skView.layer?.backgroundColor = CGColor.clear
        return skView
    }

    func updateNSView(_ nsView: NSView, context: Context) {
        
    }
}
#endif

extension SKScene {
    func add(imageNamed name: String, scale: CGFloat? = nil, zPosition: CGFloat? = nil, position: CGPoint? = nil) {
        add(sprite: SKSpriteNode(texture: SKTexture(imageNamed: name)), scale: scale, zPosition: zPosition, position: position)
    }

    func add(texture: SKTexture?, scale: CGFloat? = nil, zPosition: CGFloat? = nil, position: CGPoint? = nil) {
        guard let texture = texture else { return }
        add(sprite: SKSpriteNode(texture: texture), scale: scale, zPosition: zPosition, position: position)
    }

    func add(sprite: SKSpriteNode, scale: CGFloat? = nil, zPosition: CGFloat? = nil, position: CGPoint? = nil) {
        if let position = position {
            sprite.position = position
        }
        if let zPosition = zPosition {
            sprite.zPosition = zPosition
        }
        if let scale = scale {
            sprite.xScale = scale
            sprite.yScale = scale
        }
        addChild(sprite)
    }
}
