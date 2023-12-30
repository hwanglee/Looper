//
//  LargeButtonStyle.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct LargeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline.bold())
            .foregroundColor(.white)
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .background(.secondary)
            .cornerRadius(8)
            .brightness(configuration.isPressed ? 0.08 : 0)
            .contentShape(Rectangle())
    }
}

extension ButtonStyle where Self == LargeButtonStyle {
    static var large: LargeButtonStyle { .init() }
}

#Preview {
    Button("Test") {
        print("test")
    }
    .buttonStyle(.large)
    .padding()
}
