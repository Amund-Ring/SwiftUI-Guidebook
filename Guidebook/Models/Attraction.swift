//
//  Attraction.swift
//  Guidebook
//
//  Created by Amund Ring on 02/08/2024.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    let id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
 
