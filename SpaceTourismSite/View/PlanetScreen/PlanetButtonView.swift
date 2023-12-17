//
//  PlanetButtonView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetButtonView: View {
    @EnvironmentObject var vr: ViewRouter
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var name = ""
    var planetSelected = ""
    @State private var isTabSelected = false
    var page: Pages = .page1
    var body: some View {
        Button {
            isTabSelected = true
            withAnimation {
                vr.currentPage = page
            }
        } label: {
            Text(name)
                .font(.system(size: width >= 821 ? 30 : 20))
                .foregroundColor(.white)
                .kerning(2.5)
                .shadow(color: .black, radius: 2, x: 5, y: 2)
                .textCase(.uppercase)
                .opacity(0.6)
                .underline(isTabSelected == true ? true : false)
        }
    }
}

struct PlanetButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetButtonView()
            .environmentObject(ViewRouter())
    }
}
