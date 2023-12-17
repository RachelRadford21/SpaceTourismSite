//
//  ExploreButtonView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct ExploreButtonView: View {
    @EnvironmentObject var vr: ViewRouter
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var coreVM: CoreDataViewModel
    let width = UIScreen.main.bounds.width
    var size: CGFloat = 0.0
    var paddingSize: CGFloat = 0.0
    var body: some View {
        VStack {
            
            Button {
                vm.fetchData()
                coreVM.getDestinationData()
                withAnimation(.easeInOut(duration: 0.5).delay(0.3)) {
                    vr.currentPage = .page2
                }
                coreVM.getCrew()
            } label: {
                Text("EXPLORE")
                    .frame(alignment: .center)
                    .foregroundColor(.black)
                    .font(.system(size: size))
                    .fontWeight(.bold)
                    .padding(.all, paddingSize)
                    .scaledToFit()
                    .kerning(5.0)
                    .background(Color.white)
                    .clipShape(Circle())
            }
        }
    }
}

struct ExploreButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreButtonView()
            .environmentObject(ViewRouter())
                       .environmentObject(ViewModel())
                       .environmentObject(CoreDataViewModel())
    }
}
