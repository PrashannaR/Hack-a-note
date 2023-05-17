//
//  Color.swift
//  Hack-a-note
//
//  Created by Prashanna Rajbhandari on 05/05/2023.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let background = Color("Background")
    let baseGreen = Color("BaseGreen")
    let basePurple = Color("BasePurple")
    let baseYellow = Color("BaseYellow")
    let darkGreen = Color("DarkGreen")
    let darkPurple = Color("DarkPurple")
    let darkYellow = Color("DarkYellow")
    let textColor = Color.black
}
