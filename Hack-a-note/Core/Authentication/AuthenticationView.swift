//
//  AuthenticationView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        ZStack{
            
            //background
            Color.theme.basePurple
                .ignoresSafeArea()
            
            //foreground
            LoginView()
            
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
    }
}


//MARK: Extensions
extension  AuthenticationView{
    private func LoginView() -> some View{
        VStack {
            
            Spacer()
            
            Illustrations(imageName: "sitting")
            
            Text("Jot Down anything you want to achieve, today or in the future")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .foregroundColor(.white)
                    
                Text("Login with Google")
                    .font(.headline)
            }
            .padding(.bottom,40)
            
        }
        
    }
}
