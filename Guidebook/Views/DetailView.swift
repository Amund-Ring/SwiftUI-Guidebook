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
        VStack(spacing: 20) {
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
            
                .clipShape(SlantedShape())
            
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    Text(attraction.name)
                        .font(.title)
                        .bold()
                    
                    Text(attraction.longDescription)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .padding(.bottom, 50)
            }
            .padding(.horizontal)
            
        }
        .foregroundColor(.white)
        .ignoresSafeArea()
        .background(.black)
    }
}

struct SlantedShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height)) // Adjust the slant height here
        path.addLine(to: CGPoint(x: 0, y: rect.height - 50))
        path.closeSubpath()
        return path
    }
}

#Preview {
    DetailView(attraction: Attraction(name: "Buckingham Palace",
                                      summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                      longDescription: """
           Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.
           
           Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837.
           """,
                                      imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975"))
}
