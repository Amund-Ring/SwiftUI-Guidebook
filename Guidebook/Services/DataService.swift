//
//  DataService.swift
//  Guidebook
//
//  Created by Amund Ring on 02/08/2024.
//

import Foundation

struct DataService {
    func getFileData() -> [City] {
        
        // Get file path to DemoData.json
        if let url = Bundle.main.url(forResource: "DemoData", withExtension: "json") {
            
            do {
                // Read the file and turn it into data
                let data = try Data(contentsOf: url)
                
                // Parse data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let cities = try decoder.decode([City].self, from: data)
                    
                    return cities
                } catch {
                    print("Could not parse JSON: \(error)")
                }
                
            } catch {
                print("Could not read data: \(error)")
            }
        }
        
        return [City]()
        
    }
}


