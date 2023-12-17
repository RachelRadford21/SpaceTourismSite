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
    let width = UIScreen.main.bounds.width
    var body: some View {
        // When I made this using Button() the view was distorted/not lined up on screen. So I just made this button
        HStack {
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
                .font(.system(size: 10))
            Text("Back")
                .foregroundColor(.white)
                .font(.system(size: 10))
                .padding(.trailing, width <= 375 ? 320 : 340)
                .onTapGesture {
                    vr.currentPage = .page2
                }
        }
    
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
