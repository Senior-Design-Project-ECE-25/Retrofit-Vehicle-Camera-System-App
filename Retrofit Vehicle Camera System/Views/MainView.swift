//
//  MenuBarView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/2/22.
//

import SwiftUI

struct MainView: View {
    var cameraIsConnected: Bool = false
    
    var body: some View {
        TabView {
            VideoFeedView(isEstablished: cameraIsConnected)
            .tabItem {
                Image(systemName: "video.circle")
                Text("Video Feed")
            }

            AboutView()
            .tabItem {
                Image(systemName: "info.circle")
                Text("About")
            }
        }
    }
}

struct MenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
    }
}
