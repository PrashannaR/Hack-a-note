//
//  TeamView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 10/05/2023.
//

import SwiftUI

struct TeamView: View {
    @StateObject var vm = TeamViewModel()

    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                Headers()

                HStack {
                    BottomButton(color: Color.theme.baseYellow, image: "square.and.arrow.up.fill", text: "Share")
                    BottomButton(color: Color.theme.baseGreen, image: "arrowshape.right.fill", text: "Proceed")
                }
                .padding()

                Spacer()
            }
            .padding(.top)
            .padding()
            .navigationTitle("Form a Team")
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TeamView()
        }
    }
}

extension TeamView {
    private func Headers() -> some View {
        VStack {
            Text("Pannel Name")
                .font(.title2)
                .fontWeight(.bold)
            TextField("Pannel #1", text: $vm.textFieldString)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .border(Color.theme.darkPurple)
                .cornerRadius(5)
        }
    }

    private func BottomButton(color: Color, image: String, text: String) -> some View {
        Rectangle()
            .frame(height: 170)
            .foregroundColor(color)
            .cornerRadius(10)
            .overlay(alignment: .center) {
                HStack {
                    Text(text)
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color.theme.background)
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.theme.background)
                }
            }
    }
}
