//
//  HorizontalLineView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct HorizontalLineView: View {
    var body: some View {
        VStack{
                   Color.gray.frame(height: 2 / UIScreen.main.scale)
                       .shadow(color: .black, radius: 2, x: 6, y: -2)
                       .padding(.horizontal,130)
               }
    }
}

struct HorizontalLineView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalLineView()
    }
}
