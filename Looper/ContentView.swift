//
//  ContentView.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI
import YouTubePlayerKit

struct ContentView: View {
    @State var urlString = "https://youtube.com/watch?v=psL_5RIBqnY"
    @Environment(\.playerStore) private var playerStore
    
    var body: some View {
        VStack(spacing: 20) {
            YouTubePlayerView(playerStore.player)
                .cornerRadius(10)
            
            LabeledContent {
                TextField("Video URL", text: $urlString)
                    .textFieldStyle(.roundedBorder)
            } label: {
                Text("Video URL")
            }
            .labeledContentStyle(.vertical)
            
            ControlsView()
        }
        .padding()
        .onChange(of: urlString) {
            playerStore.player.load(source: .url(urlString))
        }
    }
}

#Preview {
    ContentView()
}
