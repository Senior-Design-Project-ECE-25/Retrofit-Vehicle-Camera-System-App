//
//  MenuBarView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/2/22.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var aboutPageViewModel: AboutPageViewModel
    var cameraIsConnected: Bool = false
    
    var body: some View {
        TabView {
            VideoFeedPageView(isConnectionEstablished: cameraIsConnected)
            .tabItem {
                Image(systemName: "video.circle")
                Text("Video Feed")
            }

            AboutPageView(cameraConnectionIsEstablished: cameraIsConnected)
                .environmentObject(aboutPageViewModel)
            .tabItem {
                Image(systemName: "info.circle")
                Text("About")
            }
        }
    }

}

struct MenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
                .environmentObject(AboutPageViewModel())
            
            MainView()
                .environmentObject(AboutPageViewModel())
                .preferredColorScheme(.dark)
        }
    }
}
