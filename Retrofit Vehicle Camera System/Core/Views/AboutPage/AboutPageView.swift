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
    @State var showSettingsAlert = false
    @State var cameraConnectionIsEstablished: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer() // Added to prevent list from being caught under Nav
                
                AboutBodyView()
                    .environmentObject(aboutPageViewModel)

                AboutFooterView()
                
                // Nav Link allows for Settings Gear button to nav to SettingsView
                NavigationLink(
                    destination: SettingsView(),
                    isActive: $showSettingsView) {
                    EmptyView()
                }
                .isDetailLink(false)
            }
            .alert(isPresented: $showSettingsAlert) {
                Alert(title: Text("Camera Unit Not Connected"),
                      message: Text("To view the Camera Unit's settings, connect it via bluetooth."),
                      dismissButton: .cancel())
            }
            .navigationTitle("About")
            .navigationBarItems(trailing: Button(action: {
                if cameraConnectionIsEstablished {
                    self.showSettingsView = true
                } else {
                    self.showSettingsAlert = true
                }
            }) {
                VStack {
                    Spacer()
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .foregroundColor(cameraConnectionIsEstablished ? .accentColor : .secondary)
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPageView(cameraConnectionIsEstablished: false)
            .environmentObject(AboutPageViewModel())
            .preferredColorScheme(.dark)
    }
}
