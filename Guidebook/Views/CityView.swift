//
//  ContentView.swift
//  Guidebook
//
//  Created by Amund Ring on 02/08/2024.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding(.horizontal)
            .background(.black)
        }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getData()
        }
    }
}

#Preview {
    CityView()
}
