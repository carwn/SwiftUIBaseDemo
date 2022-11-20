//
//  Title.swift
//  SwiftUIBaseDemo
//
//  Created by Александр Шелихов on 20.11.2022.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world!")
            .titleStyle()
    }
}
