//
//  LooperApp.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI
import SwiftData

@main
struct LooperApp: App {
    @State private var playerStore = PlayerStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.playerStore, playerStore)
        }
    }
}
