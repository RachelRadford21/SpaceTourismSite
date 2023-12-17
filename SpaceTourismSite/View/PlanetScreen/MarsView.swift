//
//  MarsView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct MarsView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "name", ascending: false)], animation: .easeInOut(duration: 0.5).delay(0.3)) var destinations: FetchedResults<DestinationEntity>
    var body: some View {
        ZStack {
                   ForEach(destinations, id: \.id) { item in
                       if item.name == "Mars" {
                           PlanetView(description: item.planetDescription ?? "", imageName: "image-mars", name: item.name ?? "", distance: item.distance ?? "", travelTime: item.travel ?? "")
                       }
                   }
               }
    }
}

struct MarsView_Previews: PreviewProvider {
    static var previews: some View {
        MarsView()
    }
}
