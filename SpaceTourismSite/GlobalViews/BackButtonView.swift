//
//  BackButtonView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct BackButtonView: View {
    @EnvironmentObject var vr: ViewRouter
    var page: Pages?
    var body: some View {
        VStack {
            // Make this responsive to different screen sizes
            Button {
                vr.currentPage = .page2
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 10, height: 10)
                    .padding(.trailing, 355)
                    .padding(.bottom, 745)
                
            }
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
