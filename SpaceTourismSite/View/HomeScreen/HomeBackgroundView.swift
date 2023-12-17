//
//  HomeBackgroundView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct HomeBackgroundView: View {
    var body: some View {
        Image("background-home-tablet")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
    }
}

struct HomeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBackgroundView()
    }
}
