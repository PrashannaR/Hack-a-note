//
//  NoteView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 17/05/2023.
//

import SwiftUI

struct NoteView: View {
    
    @StateObject private var vm = NoteViewModel()
    
    var body: some View {
        ZStack {
            
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Add Note here")
            }.navigationTitle("Add a Note")
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NoteView()
        }
    }
}
