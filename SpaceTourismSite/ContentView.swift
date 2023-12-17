//
//  ContentView.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var vr: ViewRouter
    @ObservedObject var coreVM: CoreDataViewModel
    //@State var isSelected = 1
    var body: some View {
        switch vr.currentPage {
        case .page1:
            HomeView()
                .environmentObject(coreVM)
        case .page2:
            MoonView()
                .environmentObject(coreVM)
        case .page3:
            MarsView()
                .environmentObject(coreVM)
        case .page4:
            EuropaView()
                .environmentObject(coreVM)
        case .page5:
            TitanView()
                .environmentObject(coreVM)
        case .page6:
           InfoPickerView()
                .environmentObject(coreVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreVM: CoreDataViewModel())
            .environmentObject(ViewModel())
                     .environmentObject(ViewRouter())
                     .environmentObject(CoreDataViewModel())
    }
}
