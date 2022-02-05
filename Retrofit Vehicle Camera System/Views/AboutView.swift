//
//  AboutView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/3/22.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                List {
                    Text("1. Motivation")
                        .font(.title2)
                    Text("Since 2018, cars are required by law to include a rearview camera, but according to a study in 2013, only about 31% of cars were projected to have rearview cameras by 2018, implying that a significant majority of cars in America will continue to not have rearview capabilities to this day. To combat this, we have designed a solution that will stream to your phone from a camera placed at the back of a car. This is intended to be a cheaper solution to having rearview cameras capabilities, without the need to purchase a new vehicle.")

                    Text("2. Problem Statement")
                        .font(.title2)
                    Text("To create a rearview camera app for cars that do not have them. With the increase in new cars having rearview cameras, older cars will be behind in terms of safety for owners. The problem is that buying a new car is expensive, new cars go for tens of thousands of dollars and not everyone can afford something that expensive, even if they want to be in a safer car.")
                    
                    Text("3. Proposed Solution")
                        .font(.title2)
                    Text("We propose to create a product that will let users keep their older cars while continuing to stay safe by making an upgrade to the safety capabilities. This is done by placing a camera at the back of a car and having the output of that camera stream to the user’s phone.")
                }
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.primary, Color.black.opacity(0.3)]), startPoint: .center, endPoint: .bottom)
                )

                Link("Learn more on our GitHub", destination: URL(string: "https://github.com/Senior-Design-Project-ECE-25")!)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
                
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
            .navigationTitle("About")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            //.preferredColorScheme(.dark)
    }
}
