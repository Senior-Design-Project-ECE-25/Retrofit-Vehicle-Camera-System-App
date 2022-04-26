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
                
                bodyView

                footerView
                
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
    }

}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPageView(cameraConnectionIsEstablished: false)
            .environmentObject(AboutPageViewModel())
            .preferredColorScheme(.dark)
    }
}

extension AboutPageView {
    var bodyView: some View {
        List {
            ForEach(aboutPageViewModel.entries.sorted {$0.id < $1.id}) { entry in
                Group {
                    HStack {
                        Spacer()
                        Text("\(entry.title)")
                            .font(.title2)
                            .bold()
                        Spacer()
                    }
                    Text(entry.body)
                        .font(.body)
                }
                .padding(.bottom, 5)
            }
        }
        .listStyle(PlainListStyle())
        .mask(
            LinearGradient(gradient: Gradient(colors: [Color.primary, Color.black.opacity(0.8)]), startPoint: .center, endPoint: .bottom)
        )
    }
    
    var footerView: some View {
        VStack {
            Link("Learn more on our GitHub", destination: URL(string: "https://github.com/Senior-Design-Project-ECE-25")!)
                .foregroundColor(.blue)
                .padding(.vertical, 5)
            
            Text("Designed By:\nECE 25")
                .bold()
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom, 1)

            Text("Members: Jack McVeigh, Shawn McHugh, Clay Sheffield")
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
        }
    }
}
