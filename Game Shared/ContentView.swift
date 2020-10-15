//
//  MainView.swift
//
//  Created by Szymon Lorenz on 9/2/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SceneView(scene: GameScene.newGameScene())
            .edgesIgnoringSafeArea(.all)
            .overlay(
                HStack {
                    VStack {
                        Spacer()
                        Text("Swift UI HUD")
                            .foregroundColor(.red)
                        Spacer()
                    }
                    Spacer()
                }
            )
    }
}
