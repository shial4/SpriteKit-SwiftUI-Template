//
//  Sounds.swift
//  Little Wars
//
//  Created by Szymon Lorenz on 19/9/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import Foundation
import AVKit

class Sounds {
    static var audioPlayer: AVAudioPlayer?
    
    @discardableResult
    static func playSounds(forResource path: String, numberOfLoops: Int = 0) -> AVAudioPlayer? {
        if let path = Bundle.main.path(forResource: path, ofType: nil) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.numberOfLoops = numberOfLoops
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
                return audioPlayer
            } catch {
                print("Play sounds error: \(error)")
            }
        }
        return nil
    }
}
