//
//  AuthenticationView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import Firebase
import GoogleSignIn
import GoogleSignInSwift
import SwiftUI

struct AuthenticationView: View {
    @StateObject private var vm = AuthenticaationViewModel()
    @Binding var showAuthView: Bool

    var body: some View {
        ZStack {
            // background
            Color.theme.basePurple
                .ignoresSafeArea()

            // foreground
            LoginView()
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AuthenticationView(showAuthView: .constant(false))
        }
    }
}

// MARK: Extensions

extension AuthenticationView {
    private func LoginView() -> some View {
        VStack {
            Spacer()

            Illustrations(imageName: "sitting")

            Text("Jot Down anything you want to achieve, today or in the future")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()

            Spacer()

            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .foregroundColor(.white)

                HStack {
                    GoogleSignInButton(viewModel: GoogleSignInButtonViewModel(scheme: .light, style: .icon, state: .normal)) {
                        Task {
                            do {
                                try await vm.signInGoogle()
                                showAuthView = false
                            } catch {
                                throw URLError(.cannotFindHost)
                            }
                        }
                    }.cornerRadius(10)
                    Text("Sign In with Google")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            }
            .onTapGesture {
                Task {
                    do {
                        try await vm.signInGoogle()
                        showAuthView = false
                    } catch {
                        throw URLError(.cannotFindHost)
                    }
                }
            }
            .padding(.bottom, 40)
        }
    }
}
