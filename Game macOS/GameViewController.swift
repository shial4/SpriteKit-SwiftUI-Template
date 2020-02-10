//
//  GameViewController.swift
//
//  Created by Szymon Lorenz on 21/1/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import Cocoa
import SwiftUI
import SpriteKit
import GameplayKit

struct GameView: NSViewControllerRepresentable {
    func makeNSViewController(context: NSViewControllerRepresentableContext<GameView>) -> GameViewController {
        return GameViewController()
    }

    func updateNSViewController(_ nsViewController: GameViewController, context: NSViewControllerRepresentableContext<GameView>) {
        
    }
}

class GameViewController: NSViewController {
    override func loadView() {
        view = SKView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene.newGameScene()
        
        // Present the scene
        let skView = self.view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        
        skView.showsFPS = true
        skView.showsNodeCount = true
    }
}
