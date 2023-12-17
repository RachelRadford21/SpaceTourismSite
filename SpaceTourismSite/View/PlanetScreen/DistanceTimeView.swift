//
//  DistanceTimeView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct DistanceTimeView: View {
    var distance = ""
       var travelTime = ""
       var width = UIScreen.main.bounds.width
    var body: some View {
        Group {
                    Spacer()
                    Text("Avg. distance")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .textCase(.uppercase)
                        .opacity(0.6)
                    Text(distance)
                        .foregroundColor(.white)
                        .font(.system(size: width == 375 ? 35 : 45))
                    Text("Est. travel")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .textCase(.uppercase)
                        .opacity(0.6)
                    Text(travelTime)
                        .foregroundColor(.white)
                        .font(.system(size: width == 375 ? 35 : 45))
                    
                }.padding(.bottom, width == 375 ? 10 : 0)
    }
}

struct DistanceTimeView_Previews: PreviewProvider {
    static var previews: some View {
        DistanceTimeView()
    }
}
