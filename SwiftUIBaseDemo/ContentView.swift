//
//  ContentView.swift
//  SwiftUIBaseDemo
//
//  Created by Александр Шелихов on 20.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: String = "profile"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Color.white
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
            Color.white
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag("profile")
            Color.white
                .tabItem {
                    Label("Player", systemImage: "music.note")
                }
            Color.white
                .tabItem {
                    Label("Video", systemImage: "play.rectangle")
                }
            Color.white
                .tabItem {
                    Label("Recorder", systemImage: "mic")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
