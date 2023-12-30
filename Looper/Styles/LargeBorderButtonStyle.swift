//
//  LargeBorderButtonStyle.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct LargeBorderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline.bold())
            .foregroundColor(.primary)
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .brightness(configuration.isPressed ? 0.08 : 0)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.primary, lineWidth: 1)
            )
            .contentShape(Rectangle())
    }
}

extension ButtonStyle where Self == LargeBorderButtonStyle {
    static var largeBorder: LargeBorderButtonStyle { .init() }
}

#Preview {
    Button("Test") {
        print("test")
    }
    .buttonStyle(.largeBorder)
    .padding()
}
