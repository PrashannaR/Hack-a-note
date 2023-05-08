//
//  AuthenticaationViewModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import Foundation
import GoogleSignIn
import GoogleSignInSwift
import FirebaseAuth

@MainActor
final class AuthenticaationViewModel : ObservableObject{
    func signInGoogle() async throws{
        
        guard let topVC = Utilities.shared.topViewController() else{
            throw URLError(.cannotFindHost)
        }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        
        guard let idToken : String = gidSignInResult.user.idToken?.tokenString else{throw URLError(.badURL)}
        let accessToken :  String = gidSignInResult.user.accessToken.tokenString 
        
        let tokens = GoogleSignInModel(idToken: idToken, accessToken: accessToken) 
        try await AuthenticationManger.shared.signInWithGoogle(token: tokens)
        
    }
}

