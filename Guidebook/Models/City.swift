//
//  City.swift
//  Guidebook
//
//  Created by Amund Ring on 02/08/2024.
//

import Foundation

struct City: Identifiable {
    var id: UUID = UUID()
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}
