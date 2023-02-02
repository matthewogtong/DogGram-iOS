//
//  DogGramApp.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/21/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

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
