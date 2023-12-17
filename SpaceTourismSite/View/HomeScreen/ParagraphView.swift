//
//  ParagraphView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct ParagraphView: View {
    var size: CGFloat = 0.0
      var horizontalPadding: CGFloat = 0.0
    var body: some View {
        VStack {
            Text("""
                Let’s face it; if you want to go to space, you might as well genuinely go to outer space and not hover kind of on the edge of it. Well sit back, and relax because we’ll give you a truly out of this world experience!
                """)
            .multilineTextAlignment(.center)
            .lineSpacing(5.0)
            .lineLimit(5)
            .font(.system(size: size))
            .foregroundColor(.white)
            .opacity(0.6)
            
        }
        .padding(.horizontal, horizontalPadding)
    }
}

//struct ParagraphView_Previews: PreviewProvider {
//    static var previews: some View {
//        ParagraphView()
//    }
//}
