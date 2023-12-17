//
//  DestinationHeaderView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct DestinationHeaderView: View {
    let width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
                  Text("Pick your destination")
                      .font(.system(size: width >= 820 ? 30 : width == 375 ? 15 : 20))
                      .foregroundColor(.white)
                      .kerning(1.0)
                      .opacity(0.6)
                      .textCase(.uppercase)
                      .padding(.bottom, width >= 820 ? 20 : 5)
              }.padding(.top, width == 375 ? 40 : 0)
    }
}

struct DestinationHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationHeaderView()
    }
}
