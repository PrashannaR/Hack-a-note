//
//  Illustrations.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import SwiftUI

struct Illustrations: View {
    
    let imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
    }
}

struct Illustrations_Previews: PreviewProvider {
    static var previews: some View {
        Illustrations(imageName: "sitting")
    }
}
