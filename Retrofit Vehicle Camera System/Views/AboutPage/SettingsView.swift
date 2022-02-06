//
//  SettingsView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/5/22.
//

import SwiftUI

struct SettingsView: View {

    let settings: [String: String] = [
        "Model": "Rasberry Pi Zero W",
        "Software Version": "1.0.0 Beta",
        "MAC Address": "00:00:00:00:00:00",
        "Bluetooth Address": "00:00:00:00:00:00",
        "Serial Number": "XXXXXXXXXXXX"
    ]
    
    var body: some View {
        List {
            ForEach(settings.sorted(by: >), id: \.key) { setting, value in
                HStack {
                    Text(setting)
                    Spacer()
                    Text(value)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 5)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
