//
//  AboutPageModel.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/4/22.
//

import Foundation

class AboutPageModel: ObservableObject {
    let entries: [AboutPageEntry]

    init() {
        do {
            let url = Bundle.main.url(forResource: "About", withExtension: "json")!
            let data = try Data(contentsOf: url)
            
            entries = try JSONDecoder().decode([AboutPageEntry].self, from: data)
        } catch {
            fatalError("Unable to read the About Page Entries.")
        }
    }
}


