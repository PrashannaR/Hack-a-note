//
//  AuthenticaationViewModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import Foundation

@MainActor
final class AuthenticaationViewModel : ObservableObject{
    func signInGoogle() async throws{
        let helper = GoogleSignInHelper()
        let tokens = try await helper.signIn()
        try await AuthenticationManger.shared.signInWithGoogle(token: tokens)
        
    }
}

