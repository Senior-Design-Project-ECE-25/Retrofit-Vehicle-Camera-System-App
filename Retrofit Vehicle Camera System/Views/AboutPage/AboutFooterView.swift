//
//  AboutPageFooterView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/5/22.
//

import SwiftUI

struct AboutFooterView: View {
    var body: some View {
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

struct AboutPageFooterView_Previews: PreviewProvider {
    static var previews: some View {
        AboutFooterView()
    }
}
