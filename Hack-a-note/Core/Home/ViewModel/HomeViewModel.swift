//
//  HomeViewModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import Foundation

class HomeViewModel : ObservableObject{
    func logout() throws{
        try AuthenticationManger.shared.signOut()
    }
}
