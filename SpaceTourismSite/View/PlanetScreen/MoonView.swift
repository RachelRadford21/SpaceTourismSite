//
//  MoonView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct MoonView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "name", ascending: false)], animation: .easeInOut(duration: 0.1).delay(0.1))var destinations: FetchedResults<DestinationEntity>
    var body: some View {
        ZStack {
            ForEach(destinations, id: \.id) { item in
                if item.name == "Moon" {
                    PlanetView(description: item.planetDescription ?? "", imageName: "image-moon", name: item.name ?? "", distance: item.distance ?? "", travelTime: item.travel ?? "")
                }
                
            }
            
        }
    }
}

struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView()
    }
}
