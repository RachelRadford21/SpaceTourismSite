//
//  PlanetNameView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetNameView: View {
    let width = UIScreen.main.bounds.width
    var name = ""
    var body: some View {
        VStack {
            Text(name)
                .foregroundColor(.white)
                .font(.system(size: width >= 820 ? 90 : width == 375 ? 35 : 40))
                .textCase(.uppercase)
                .fontWeight(.bold)
                .kerning(6)
        }.padding(.bottom, width == 375 ? -20 : 0)
    }
}

struct PlanetNameView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetNameView()
    }
}
