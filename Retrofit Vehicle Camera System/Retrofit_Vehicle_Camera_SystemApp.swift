//
//  Retrofit_Vehicle_Camera_SystemApp.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 1/31/22.
//

import SwiftUI

@main
struct Retrofit_Vehicle_Camera_SystemApp: App {
    
    @StateObject var aboutPageViewModel = AboutPageViewModel()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                MainView()
                    .environmentObject(aboutPageViewModel)
                SplashScreenView()
            }
        }
    }
}
