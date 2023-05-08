//
//  HomeView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var showAuthView : Bool
    @StateObject var vm = HomeViewModel()
    
    var body: some View {
        ZStack{
            Image(systemName: "house.fill")
        }.navigationTitle("Home View")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Exit")
                        .onTapGesture {
                            Task{
                                do{
                                    try vm.logout()
                                    showAuthView = true
                                }catch{
                                    print("error logging out : \(error)")
                                }
                            }
                        }
                }
            }

    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView(showAuthView: .constant(false))
        }
    }
}
