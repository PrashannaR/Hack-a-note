//
//  ProfileViewModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import Foundation

class ProfileViewModel : ObservableObject{
    func logout() throws{
        try AuthenticationManger.shared.signOut()
    }
    
    func delete() async throws{
        try await AuthenticationManger.shared.delete()
    }
}
