//
//  SignInWithGoogle.swift
//  DogGram
//
//  Created by Matthew Ogtong on 2/4/23.
//

import Foundation
import FirebaseAuth
import GoogleSignIn
import Firebase
import SwiftUI

class SignInWithGoogle {
    
    static let share = SignInWithGoogle()
    
    private init() { }
    
    var onboardingView: OnboardingView!
    
    func startSignInWithGoogleFlow(view: OnboardingView) {
        
        // Call the sign in method here
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: view.getRootViewController()) { signResult, error in
            
            if let error = error {
                ///
                return
            }
            
            guard let user = signResult?.user,
                  let idToken = user.idToken else { return }
            
            let accessToken = user.accessToken
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
            
            // Use the credential to authenticate with Firebase
            
        }
        
    }
}
