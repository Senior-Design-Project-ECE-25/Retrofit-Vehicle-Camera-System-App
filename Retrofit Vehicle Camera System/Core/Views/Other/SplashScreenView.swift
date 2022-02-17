//
//  SplashScreenView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/2/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var timerElapsed = false

    var body: some View {
        ZStack(alignment: .center) {
            Color.theme.backgroundColor
                .ignoresSafeArea()
            Circle()
                .fill(.black)
                .frame(width: 250, height: 250)
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
            VStack {
                Image("tempLogo")
                    .resizable()
                    .frame(width: 170, height: 170)
            }
        }
        .opacity(timerElapsed ? 0 : 1)
        .animation(.easeInOut, value: timerElapsed)
        .task {
            try? await Task.sleep(nanoseconds: 1_000_000_000)
            timerElapsed = true
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .preferredColorScheme(.dark)
    }
}
