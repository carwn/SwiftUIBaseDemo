//
//  MainText.swift
//  SwiftUIBaseDemo
//
//  Created by Александр Шелихов on 20.11.2022.
//

import SwiftUI

struct MainText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
    }
}

extension View {
    func mainTextStyle() -> some View {
        modifier(MainText())
    }
}

struct MainText_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .mainTextStyle()
    }
}
