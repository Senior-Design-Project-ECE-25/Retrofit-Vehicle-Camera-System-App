//
//  Color.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/10/22.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()

}

struct ColorTheme {
    
    let primaryTextColor = Color.primary
    let secondaryTextColor = Color.secondary
    let backgroundColor = Color(UIColor.systemBackground)
    let accentColor = Color.accentColor

}
