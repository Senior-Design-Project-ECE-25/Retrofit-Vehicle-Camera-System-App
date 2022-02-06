//
//  SearchingForCameraView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/4/22.
//

import SwiftUI

struct SearchingForCameraView: View {
    @State private var shouldAnimate = false
    
    var body: some View {
        VStack {
            Text("?")
                .font(.largeTitle)
                .bold()
                .rotationEffect(Angle(degrees: shouldAnimate ? -22.5 : 22.5))
                .animation(
                    Animation.easeInOut(duration: 1)
                        .repeatForever(autoreverses: true),
                    value: shouldAnimate
                )
                .padding(.bottom, -5)

            Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                
            Text("Waiting for Camera Connection")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top, 150)
            Text("Please connect the camera unit via Bluetooth")
                .font(.callout)
                .padding(.bottom, 150)
            
            Image(systemName: "iphone")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .overlay(
                    ZStack {
                        Circle()
                            .stroke(Color.blue, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 1 : 0)
                        Circle()
                            .stroke(Color.blue, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 1.25 : 0)
                        Circle()
                            .stroke(Color.blue, lineWidth: 100)
                            .scaleEffect(shouldAnimate ? 1.5 : 0)
                    }
                    .opacity(shouldAnimate ? 0.0 : 0.2)
                    .animation(
                        Animation.easeInOut(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: shouldAnimate
                    )
            )
            .onAppear {
                self.shouldAnimate = true
            }
        }
    }
}

struct SearchingForCameraView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingForCameraView()
    }
}
