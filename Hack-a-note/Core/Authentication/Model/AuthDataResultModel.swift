//
//  AuthDataResultModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?

    init(user: User) {
        uid = user.uid
        email = user.email
        photoUrl = user.photoURL?.absoluteString
    }
}
