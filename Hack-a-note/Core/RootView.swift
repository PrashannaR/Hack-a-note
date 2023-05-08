//
//  RootView.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 09/05/2023.
//

import SwiftUI

struct RootView: View {
    @State var showAuthView : Bool = false
    var body: some View {
        ZStack{
            NavigationStack{
                HomeView(showAuthView: $showAuthView)
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManger.shared.getAuthenticatedUser()
            self.showAuthView = authUser == nil
        }
        .fullScreenCover(isPresented: $showAuthView) {
            AuthenticationView(showAuthView: $showAuthView)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
