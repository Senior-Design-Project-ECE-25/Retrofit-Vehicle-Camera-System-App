//
//  VideoView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 1/31/22.
//

import SwiftUI

struct VideoView: View {
    var body: some View {
        //Image("testImageWH")
        Image("defaultVideoPlayer")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
