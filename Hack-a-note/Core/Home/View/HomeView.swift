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
                    NavigationLink {
                        Profile(showAuthView: $showAuthView)
                    } label: {
                        Image(systemName: "person.fill")
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
