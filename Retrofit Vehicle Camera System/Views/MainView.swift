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
            VideoFeedPageView(isEstablished: cameraIsConnected)
            .tabItem {
                Image(systemName: "video.circle")
                Text("Video Feed")
            }

            AboutPageView()
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
        MainView()
            .environmentObject(AboutPageViewModel())
            .preferredColorScheme(.dark)
    }
}
