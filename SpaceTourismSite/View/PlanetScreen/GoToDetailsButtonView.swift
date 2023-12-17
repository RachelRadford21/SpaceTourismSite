//
//  GoToDetailsButtonView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import SwiftUI

struct GoToDetailsButtonView: View {
    @EnvironmentObject var coreVM: CoreDataViewModel
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var vr: ViewRouter
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var body: some View {
        // iPhone SE: width - 375, height - 667
        // iPhone 13 & 14: width - 390, height - 844
        //iPhone 14 pro: width: 393, height: 852
        // iPhone 14 pro max: width - 430, height - 932
        
        // iPhone 14 plus: width - 428, height - 926(this view is fine, maybe a little horiztonal padding
        // JUST SAY WIDTH >= 820
        // iPad Air: width - 820, height - 1180
        // iPad Pro: width: 834
        
        VStack {
            Button {
                vm.addCrew()
                vm.addTech()
                withAnimation(.easeInOut(duration: 0.5).delay(0.3)) {
                    vr.currentPage = .page6
                    
                }
            } label: {
                
                Image("logo-20")
                    .resizable()
                    .frame(width: width >= 375 && width <= 394 ? 50 : 40, alignment: .bottomTrailing)
                    .frame(height: height >= 667 && height <= 852 ? 50 : 40, alignment: .bottomTrailing)
                    .frame(width: width >= 428 && width <= 430 ? 50 : 40, alignment: .bottomTrailing)
                    .frame(height: height >= 926 && height <= 932 ? 50 : 40, alignment: .bottomTrailing)
                    .shadow(color: .black, radius: 3, x: 2, y: 2)
                    .padding(.leading, width >= 820 ? 680 : width == 375 ? 270 : width == 390 ? 300 : 330)
                    .padding(.bottom, width >= 820 ? 10 : -5)
                    .padding(.bottom, width == 375 ? 115 : 0)
            }
            //                    .padding(.bottom, width == 375 ? 105 : 0)
            
            
        }
    }
}

struct GoToDetailsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GoToDetailsButtonView()
            .environmentObject(ViewRouter())
            .environmentObject(CoreDataViewModel())
    }
}
