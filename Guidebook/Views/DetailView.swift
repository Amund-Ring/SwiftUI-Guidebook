//
//  DetailView.swift
//  Guidebook
//
//  Created by Amund Ring on 02/08/2024.
//

import SwiftUI

struct DetailView: View {
    
    var attraction: Attraction
    
    var body: some View {
        ZStack() {
            VStack {
                Image(attraction.imageName)
                    .resizable()
                    .frame(height: 300)
                
                Spacer()
            }
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    Text(attraction.name)
                        .font(.title)
                        .bold()
                    
                    Text(attraction.longDescription)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    Button(action: {
                        if let url = URL(string: "maps://?q=\(attraction.name.replacingOccurrences(of: " ", with: "+"))&11=\(attraction.latLong)&z=10&t=s"){
                            
                            if UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url)
                            }
                        }
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .frame(height: 40)
                            Text("Get Directions")
                        }
                    })
                }
                .padding(.bottom, 50)
                .padding(.top, 50)
                .padding(.horizontal, 20)
            }
            .background(Color.black)
            .padding(.top, 250)
            .clipShape(ScrollShape())
            
        }
        .foregroundColor(.white)
        .ignoresSafeArea()
        .background(.black)
    }
}

struct ScrollShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 250)) // Start slightly down from top-left
        path.addLine(to: CGPoint(x: rect.width, y: 300)) // Draw line to top-right
        path.addLine(to: CGPoint(x: rect.width, y: rect.height)) // Draw line to bottom-right
        path.addLine(to: CGPoint(x: 0, y: rect.height)) // Draw line to bottom-left
        path.closeSubpath()
        return path
    }
}

#Preview {
    DetailView(attraction: Attraction(name: "Pantheon",
                                      summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                      longDescription: """
           The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
           """,
                                      imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798"))
}
