//
//  fibrilApp.swift
//  fibril
//
//  Created by Nicholas Conant-Hiley on 5/17/24.
//
import SwiftData
import SwiftUI

@main
struct fibrilApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Word.self)
    }
}
