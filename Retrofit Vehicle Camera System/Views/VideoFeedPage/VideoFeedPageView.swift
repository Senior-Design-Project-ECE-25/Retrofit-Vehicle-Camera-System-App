//
//  VideoFeedPageView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 1/31/22.
//

import SwiftUI

struct VideoFeedPageView: View {
    @State var isConnectionEstablished: Bool = false
    
    var body: some View {
        if isConnectionEstablished {
            Image("defaultVideoPlayer")
                .resizable()
                .aspectRatio(4/5, contentMode: .fit)
        } else {
            SearchingForCameraView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoFeedPageView()
    }
}
