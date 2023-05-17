//
//  NoteViewModel.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 17/05/2023.
//

import Foundation

class NoteViewModel : ObservableObject{
    @Published var note: String = ""
    @Published var showSheet : Bool = false
    @Published var titleText : String = ""
    @Published var bodyText : String = ""
}
