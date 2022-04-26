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
    private let videoFeedUrl = "http://192.168.86.40:23451/api/v1/VideoFeed"

    var body: some View {
        VStack {
            if isConnectionEstablished {
                VStack {
                    HStack {
                        Text("Backup Camera")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "rotate.left")
                    }
                    .padding(.horizontal, 30)

                    Divider()
                        .padding(.top, -15)
                    
                    Spacer()
                
                    WebView(url: URL(string: videoFeedUrl)!)
                        .frame(width: 320, height: 240)
                    
                    Spacer()
                }
            } else {
                SearchingForCameraView()
            }

            Button() {
                isConnectionEstablished.toggle()
            }
            label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.secondary)
                    Text("DEBUG: Toggle Camera Connection")
                        .foregroundColor(Color.green)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .padding(.horizontal)
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
