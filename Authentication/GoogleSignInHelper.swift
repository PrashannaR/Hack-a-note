//
//  GoogleSignInHelper.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import Foundation
import GoogleSignIn
import GoogleSignInSwift

final class GoogleSignInHelper{
    @MainActor
    
    func signIn() async throws -> GoogleSignInModel{
        guard let topVC = Utilities.shared.topViewController() else{
            throw URLError(.cannotFindHost)
        }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        
        guard let idToken : String = gidSignInResult.user.idToken?.tokenString else{throw URLError(.badURL)}
        let accessToken :  String = gidSignInResult.user.accessToken.tokenString
        
        let tokens = GoogleSignInModel(idToken: idToken, accessToken: accessToken)
        
        return tokens
    }
}
