//
//  MenuBarView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/2/22.
//

import SwiftUI

struct MenuBarView: View {
    var body: some View {
        TabView {
            VideoView()
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
        MenuBarView()
            .preferredColorScheme(.dark)
    }
}
