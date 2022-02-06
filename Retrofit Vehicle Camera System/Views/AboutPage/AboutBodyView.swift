//
//  AboutBodyView.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/5/22.
//

import SwiftUI

struct AboutBodyView: View {
    
    @EnvironmentObject var aboutPageViewModel: AboutPageViewModel

    var body: some View {
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
}

struct AboutBodyView_Previews: PreviewProvider {
    static var previews: some View {
        AboutBodyView()
            .environmentObject(AboutPageViewModel())
    }
}
