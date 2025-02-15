//
//  ContentView.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainSaveView()
                .tabItem {
                    Label("", systemImage: "house")
                }
            MainMapView()
                .tabItem {
                    Label("", systemImage: "map")
                }
            Text("Profile View")
                .tabItem {
                    Label("", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
