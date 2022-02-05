//
//  AboutView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/3/22.
//

import SwiftUI

struct AboutView: View {
    var model: AboutPageModel
    @State var showSettingsView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List {
                    ForEach(model.entries.sorted {$0.id < $1.id}, id: \.self) { entry in
                        Text("\(entry.id). \(entry.title)")
                            .font(.title2)
                        Text(entry.body)
                            .font(.body)
                    }
                    Text("") // Give blank entry at end of list for extra room
                }
                .listStyle(InsetGroupedListStyle())
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.primary, Color.black.opacity(0.5)]), startPoint: .center, endPoint: .bottom)
                )

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
                
                // Nav Link allows for Settings Gear button to nav to SettingsView
                NavigationLink(destination: SettingsView(), isActive: $showSettingsView) {
                    EmptyView()
                }.isDetailLink(false)
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
        AboutView(model: AboutPageModel())
            .preferredColorScheme(.dark)
    }
}
