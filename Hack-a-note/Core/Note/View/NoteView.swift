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
            foreground()
        }
        .sheet(isPresented: $vm.showSheet) {
            Text("hehe")
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
    private func editTextOverlayView() -> some View {
        VStack {
            TextField(text: $vm.titleText) {
                Text("Title")
                    .foregroundColor(Color.theme.textColor)
            }

            .font(.largeTitle)
            .bold()

            TextField(text: $vm.bodyText) {
                Text("Body")
                    .foregroundColor(Color.theme.textColor)
            }
            Spacer()
        }.padding()
    }

    private func bottomView() -> some View {
        HStack {
            Spacer()
            icons(imageName: "list.bullet.circle.fill")
            icons(imageName: "pencil.circle.fill")
            icons(imageName: "square.and.pencil.circle.fill")
                .onTapGesture {
                    vm.showSheet.toggle()
                }
            Spacer()
        }
    }

    private func icons(imageName: String) -> some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .foregroundColor(Color.white)
            .padding()
    }
    
    private func foreground() -> some View{
        VStack {
            RoundedRectangle(cornerRadius: 30)
                .stroke(lineWidth: 1)
                .foregroundColor(Color.theme.darkPurple)
                .overlay(alignment: .leading, content: {
                    editTextOverlayView()
                })
                .padding()

            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 60)
                    .foregroundColor(Color.theme.darkPurple.opacity(0.69))
                    .overlay(alignment: .center, content: {
                        bottomView()
                            .padding(.horizontal)
                    })
                    .padding()
            }
        }
    }
}
