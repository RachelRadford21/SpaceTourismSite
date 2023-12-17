//
//  HomeView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var vr: ViewRouter
    @EnvironmentObject var coreVM: CoreDataViewModel
    var body: some View {
        ZStack {
            HomeBackgroundView()
            // Using GeoReader helps scale view correctly on diff devices
            GeometryReader { geo in
                let width = geo.size.width
                
                let height = geo.size.height
                
                HStack {
                    VStack(spacing: 25) {
                        Spacer()
                        HeaderView(size: height*0.019)
                        
                        HeroView(size: width > 580 ? height*0.12 : width < 490 ? height*0.08: height*0.08)
                        
                        ParagraphView(size: width > 800 ? 25 : 15, horizontalPadding: width > 575 ? 80 : width < 490 ? 45 : 70)
                        
                        Spacer()
                        
                        ExploreButtonView(size: width > 800 ? 30 : width < 490 ? 10 : 15, paddingSize:  width > 800 ? 85 : width < 490 ? 50 : 60)
                        
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, height > 1000 ? 125 : height < 700 ? 100 : 110)
                    
                    
                }
            }
        }
    }
}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
