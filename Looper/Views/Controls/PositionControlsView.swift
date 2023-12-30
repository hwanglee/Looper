//
//  PositionControlsView.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct PositionControlsView: View {
    @Environment(\.playerStore) private var playerStore
    
    var body: some View {
        HStack {
            Button("Loop Start") {
                print("pause")
            }
            
            Button("- 5 Sec") {
                seekTime(time: -5)
            }
            
            Button("+ 5 Sec") {
                seekTime(time: +5)
            }
        }
        .buttonStyle(.largeBorder)
    }
    
    func seekTime(time: Double) {
        Task {
            do {
                let currentTime = try await playerStore.player.getCurrentTime()
                
                playerStore.player.seek(to: currentTime + time, allowSeekAhead: true)
            } catch {
                print("failed to set time")
            }
        }
    }
}

#Preview {
    PositionControlsView()
        .padding()
}
