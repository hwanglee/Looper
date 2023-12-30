//
//  SpeedControlsView.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct SpeedControlsView: View {
    @Environment(\.playerStore) private var playerStore
    @State var test = false
    
    var body: some View {
        HStack {
            Button("0.5x") {
                playerStore.player.set(playbackRate: 0.5)
            }
            
            Button("0.75x") {
                playerStore.player.set(playbackRate: 0.75)
            }
            
            Button("1x") {
                playerStore.player.set(playbackRate: 1)
            }
            
            Toggle("Custom", isOn: $test)
                .toggleStyle(.button)
        }
        .buttonStyle(.largeBorder)
    }
}

#Preview {
    SpeedControlsView()
        .padding()
}
