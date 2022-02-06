//
//  AboutView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/3/22.
//

import SwiftUI

struct AboutPageView: View {
    
    @EnvironmentObject var aboutPageViewModel: AboutPageViewModel
    @State var showSettingsView = false
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    Spacer() // Added to prevent list from being caught under Nav
                    
                    AboutBodyView()
                        .environmentObject(aboutPageViewModel)

                    AboutFooterView()
                    
                    // Nav Link allows for Settings Gear button to nav to SettingsView
                    NavigationLink(destination: SettingsView(), isActive: $showSettingsView) {
                        EmptyView()
                    }
                    .isDetailLink(false)
                }
            }
            .navigationTitle("About")
            .navigationBarItems(trailing: Button(action: {
                self.showSettingsView = true
            }) {
                VStack {
                    Spacer()
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                }
            })
        }
    }

}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPageView()
            .environmentObject(AboutPageViewModel())
            .preferredColorScheme(.dark)
    }
}
