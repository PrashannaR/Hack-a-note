//
//  AuthenticationManager.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import Foundation
import FirebaseAuth

final class AuthenticationManger{
    static let shared = AuthenticationManger() //singleton
    private init(){}
    
    
    //MARK: Sign in With Google
    @discardableResult 
    func signInWithGoogle(token: GoogleSignInModel) async throws -> AuthDataResultModel{
        
        //credential
        let credential = GoogleAuthProvider.credential(withIDToken: token.idToken, accessToken: token.accessToken)
        
        let authDataResult = try await Auth.auth().signIn(with: credential)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    
    // MARK: User Persistancy
    func getAuthenticatedUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AuthDataResultModel(user: user)
    }
    
    // MARK: Sign Out
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    // MARK: Delete
    func delete() async throws{
        guard let user = Auth.auth().currentUser else{
            throw URLError(.badServerResponse)
        }
        try await user.delete()
    }
     
    
}
