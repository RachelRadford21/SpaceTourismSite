//
//  PlanetDescriptionView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetDescriptionView: View {
    var description = ""
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var body: some View {
        HStack(spacing: 20){
            VStack(spacing: 30) {
                Text("""
        \(description)
        """)
                .multilineTextAlignment(.center)
                .lineSpacing(5.0)
                .lineLimit(5)
                .font(.system(size: width >= 820 ? 20 : width == 375 ? 10 : 15))
                .frame(width: width >= 820 ? 600 : 350, height: height >= 1180 ? 120 : 110)
                .foregroundColor(.white)
                .opacity(0.6)
                .padding(.horizontal, width >= 820 ? 120 : width == 375 ? 75 : 105)
            }.padding(.bottom, width == 375 ? -20 : 0)
            
        }
    }
}

struct PlanetDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDescriptionView()
    }
}
