//
//  VerticalContentStyle.swift
//  Looper
//
//  Created by Hwang Lee on 7/18/23.
//

import SwiftUI

struct VerticalLabeledContentStyle: LabeledContentStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
                .foregroundStyle(.gray)
            configuration.content
        }
    }
}

extension LabeledContentStyle where Self == VerticalLabeledContentStyle {
    static var vertical: VerticalLabeledContentStyle { .init() }
}

#Preview {
    LabeledContent("Test") {
        Text("Test")
    }
    .labeledContentStyle(.vertical)
}
