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
            Spacer()

            Text("?")
                .font(.largeTitle)
                .bold()
                .rotationEffect(Angle(degrees: shouldAnimate ? -22.5 : 22.5))
                .animation(
                    Animation
                        .easeInOut(duration: 1)
                        .repeatForever(autoreverses: true),
                    value: shouldAnimate
                )

            Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(.top, -5)
            
            Spacer()

            Group {
                Text("Waiting for Camera Connection")
                    .font(.largeTitle)
                    .bold()

                Button(action: {
                    UIApplication.shared.open(
                        URL(string: "App-prefs:Bluetooth")!
                    )
                }, label: {
                    Text("Please connect the camera unit via Bluetooth")
                        .font(.callout)
                })
            }
            .multilineTextAlignment(.center)
            
            Spacer()
            
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

            Spacer()
        }
    }
}

struct SearchingForCameraView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingForCameraView()
    }
}
