//
//  Extensions.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/22/23.
//

import Foundation
import SwiftUI

extension View {
    func getRootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return .init() }
        
        guard let root = screen.windows.first?.rootViewController else { return .init() }
        
        return root
    }
}

extension Color {
    
    struct MyTheme {
        
        static var purpleColor: Color {
            return Color("ColorPurple")
        }
        
        static var yellowColor: Color {
            return Color("ColorYellow")
        }
        
        static var beigeColor: Color {
            return Color("ColorBeige")
        }
        
    }
    
}
