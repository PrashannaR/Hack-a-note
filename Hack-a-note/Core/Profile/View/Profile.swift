//
//  Profile.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import SwiftUI

struct Profile: View {
    
    @Binding var showAuthView : Bool
    @StateObject var vm = ProfileViewModel()
    
    var body: some View {
        List {
            Button("Log Out") {
                Task {
                    do {
                        try vm.logout()
                        showAuthView = true
                    } catch {
                        print("Error: \(error)")
                    }
                }
            }
            
            Button("Delete Button", role: .destructive) {
                Task{
                    do{
                        try await vm.delete()
                        showAuthView = true
                    }catch{
                        print("Error \(error)")
                    }
                }
            }
                        

        }
        .navigationTitle("Profile")
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Profile(showAuthView: .constant(false))
        }
    }
}
