//
//  PlanetView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetView: View {
    @EnvironmentObject var vr: ViewRouter
    let width = UIScreen.main.bounds.width
    //let height = UIScreen.main.bounds.height
    var description = ""
    var imageName = ""
    var name = ""
    var distance = ""
    var travelTime = ""
    var body: some View {
        ZStack {
            DestinationBackgroundView()
            HStack{
                
                VStack(spacing: 10) {
                    Spacer()
                    DestinationHeaderView()
                    
                    PlanetImageView(imageName: imageName)
                    
                    PlanetRowView()
                        .padding(.horizontal, width == 375 ? 80 : width >= 821 ? 150 : 120)
                    PlanetNameView(name: name)
                    
                    PlanetDescriptionView(description: description)
                    Spacer()
                    
                    HorizontalLineView()
                        .padding(.bottom, 20)
                    
                    DistanceTimeView(distance: distance, travelTime: travelTime)
                    
                    GoToDetailsButtonView()
                    

                    
                }
            }
            .padding(.all, width == 375 ? 125 : 0)
            .padding(.trailing, width == 375 ? 20 : 0)
            .padding(.top, width == 375 ? 15 : 0)
        }
       
    }
}

struct PlanetView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetView()
            .environmentObject(ViewRouter())
    }
}
