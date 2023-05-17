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
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.black)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.black)]
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RootView()
            }.toolbar(.hidden, for: .navigationBar)
        }
    }
}
