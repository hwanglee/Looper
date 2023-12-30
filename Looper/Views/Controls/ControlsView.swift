//
//  ControlsView.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct ControlsView: View {
    @Environment(\.playerStore) private var playerStore
    
    var body: some View {
        VStack(spacing: 18) {
            LabeledContent("Speed") {
                SpeedControlsView()
            }
            
            LabeledContent("Position") {
                PositionControlsView()
            }
        }
        .labeledContentStyle(.vertical)
    }
}

#Preview {
    ControlsView()
        .padding()
}
