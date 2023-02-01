//
//  DogGramApp.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/21/23.
//

import SwiftUI
import FirebaseCore

@main
struct DogGramApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
