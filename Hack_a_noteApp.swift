//
//  Hack_a_noteApp.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import SwiftUI
import Firebase

@main
struct Hack_a_noteApp: App {
    
    init(){
        FirebaseApp.configure()
        print("Firebase Configured")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                AuthenticationView()
            }.toolbar(.hidden, for: .navigationBar)
        }
    }
}
