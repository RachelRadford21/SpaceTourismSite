//
//  PlanetRowView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct PlanetRowView: View {
    @EnvironmentObject var vr: ViewRouter
    @EnvironmentObject var vm: ViewModel
    var width = UIScreen.main.bounds.width
    var body: some View {
        HStack{
            
            PlanetButtonView(name: "Moon", planetSelected: vm.planetNameSelected, page: .page2)
            Spacer()
            PlanetButtonView(name: "Mars", planetSelected: vm.planetNameSelected, page: .page3)
            Spacer()
            PlanetButtonView(name: "Europa", planetSelected: vm.planetNameSelected, page: .page4)
            Spacer()
            PlanetButtonView(name: "Titan", planetSelected: vm.planetNameSelected, page: .page5)
            
        }.padding(.horizontal, width == 375 ? 5 : 0)
    }
}

struct PlanetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRowView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
    }
}
