//
//  ContentView.swift
//  SwiftUIBaseDemo
//
//  Created by Александр Шелихов on 20.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .titleStyle()
            Text("Main text")
                .mainTextStyle()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
