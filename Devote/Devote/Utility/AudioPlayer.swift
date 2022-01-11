//
//  AudioPlayer.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 11/01/2022.
//

import Foundation
import AVFAudio

var audioPlayer: AVAudioPlayer?

func playSound (sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
        
}
