//
//  HeaderView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct HeaderView: View {
    var size: CGFloat = 0.0
    var body: some View {
        Text("So, you want to travel to")
                    .textCase(.uppercase)
                    .font(.system(size: size))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .kerning(1.5)
                    .opacity(0.6)
    }
}
//
//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//    }
//}
