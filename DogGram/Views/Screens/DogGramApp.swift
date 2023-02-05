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
    // Connecting App Delegate...
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
    // Initializing Firebase
    FirebaseApp.configure()
    
    return true
  }
  
  @available(iOS 9.0, *)
  func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any]) -> Bool {
    return GIDSignIn.sharedInstance.handle(url)
  }
}
