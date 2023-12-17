//
//  PlanetImageView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetImageView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var imageName = ""
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: width >= 820 ? 250 : width <= 375 ? 100 : 170, height: height >= 1170 ? 250 : height <= 667 ? 100 : 170 , alignment: .center)
            .scaledToFit()
            .padding(.bottom, width >= 820 ? 20 : 5)
    }
}

struct PlanetImageView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetImageView()
    }
}
