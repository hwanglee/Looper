//
//  Player.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import Foundation
import Observation
import YouTubePlayerKit
import SwiftUI

@Observable
class PlayerStore {
    var player: YouTubePlayer
    var loopStartTime = 0
    var loopTimeEnd = 0
    var loop = false
    
    init(player: YouTubePlayer = YouTubePlayer(source: .url("https://youtube.com/watch?v=psL_5RIBqnY"))) {
        self.player = player
        self.player.configuration.autoPlay = false
    }
}

struct CustomPlayerKey: EnvironmentKey {
    static var defaultValue = PlayerStore()
}

extension EnvironmentValues {
    // 1
    var playerStore: PlayerStore {
        get { self[CustomPlayerKey.self] }
        set { self[CustomPlayerKey.self] = newValue }
    }
}
