//
//  AboutPageEntry.swift
//  Retrofit Vehicle Camera System
//
//  Created by Jack McVeigh on 2/4/22.
//

import Foundation

struct AboutPageEntry: Identifiable, Decodable {
    var id: Int
    var title: String
    var body: String
    
    static var example = AboutPageEntry(id: 1, title: "Example Entry", body: "This is an example.")
}
