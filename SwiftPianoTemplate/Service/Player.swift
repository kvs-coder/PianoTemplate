//
//  Player.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 15.07.20.
//  Copyright © 2020 csh. All rights reserved.
//

import Foundation
import AVFoundation

class Player {
    private var audioPlayer: AVAudioPlayer?

    func play(tangent: Tangent) {
        let soundURL = Bundle.main.url(forResource: tangent.rawValue, withExtension: "mp3")
        if let url = soundURL {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
            } catch let error {
                print(error.localizedDescription)
            }
            audioPlayer?.currentTime = 0.1
            audioPlayer?.play()
        }
    }
}
