//
//  HeroView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct HeroView: View {
    var size: CGFloat = 0.0
    var body: some View {
        Text("SPACE")
                   .foregroundColor(.white)
                   .font(.system(size: size))
                   .kerning(15.0)
    }
}

//struct HeroView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroView()
//    }
//}
