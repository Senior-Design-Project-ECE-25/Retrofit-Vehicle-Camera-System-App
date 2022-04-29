//
//  MenuBarView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/2/22.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var aboutPageViewModel: AboutPageViewModel
    @State var cameraIsConnected: Bool = false
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.gray.withAlphaComponent(0.15)
    }
    
    var body: some View {
        TabView {
            VideoFeedPageView(isConnectionEstablished: cameraIsConnected)
                .tabItem {
                    Image(systemName: "video.circle")
                    Text("Camera")
                }

            AboutPageView(cameraConnectionIsEstablished: cameraIsConnected)
                .environmentObject(aboutPageViewModel)
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
        }
        .tint(.accentColor)
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
