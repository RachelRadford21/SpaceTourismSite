//
//  DestinationBackgroundView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct DestinationBackgroundView: View {
    var body: some View {
        Image("background-destination-tablet")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
    }
}

struct DestinationBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationBackgroundView()
    }
}
