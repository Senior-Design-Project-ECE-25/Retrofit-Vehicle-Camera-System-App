//
//  SettingsView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/5/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            ForEach(1...10, id: \.self) { _ in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
