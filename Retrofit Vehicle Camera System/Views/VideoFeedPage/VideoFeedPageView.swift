//
//  VideoFeedPageView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 1/31/22.
//

import AVKit
import SwiftUI

struct VideoFeedPageView: View {
    @State var isConnectionEstablished: Bool = false
    private let videoFeedUrl = "http://69.242.79.165:23451/api/v1/VideoFeed/Flex"

    var body: some View {
        ZStack {
            if isConnectionEstablished {
                NavigationView {
                    VStack {

                        Divider()
                        
                        ZStack {
                            Text("Loading...")
                                .font(.title)
                                .bold()
                            WebView(url: URL(string: videoFeedUrl)!)
                        }
                    }
                    .navigationTitle("Camera")
                }
            } else {
                SearchingForCameraView()
            }
            
            VStack {
                Spacer()

                Button() {
                    isConnectionEstablished.toggle()
                }
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.secondary)
                        Text("DEBUG: Toggle Camera Connection")
                            .foregroundColor(Color.red)
                            .font(.title3)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoFeedPageView(isConnectionEstablished: false)
            .preferredColorScheme(.dark)
    }
}
