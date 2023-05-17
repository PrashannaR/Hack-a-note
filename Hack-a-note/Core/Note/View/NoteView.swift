//
//  NoteView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 17/05/2023.
//

import SwiftUI

// MARK: View

struct NoteView: View {
    @StateObject private var vm = NoteViewModel()

    var body: some View {
        ZStack {
            // background
            Color.theme.background
                .ignoresSafeArea()

            // foreground
            VStack {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color.theme.darkPurple)
                    .overlay(alignment: .leading, content: {
                        overlayView()
                    })
                    .padding()

                RoundedRectangle(cornerRadius: 20)
                    .padding()
                    .frame(height: 150)
                    .foregroundColor(Color.theme.baseGreen)

                    
            }
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

// MARK: Extension

extension NoteView {
    private func overlayView() -> some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
                .bold()
                .frame(height: 30)
                .foregroundColor(Color.theme.textColor)

            Text("Body")
                .foregroundColor(Color.theme.textColor)
            Spacer()
        }.padding()
    }
}
