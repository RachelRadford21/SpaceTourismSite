//
//  SpaceTourismSiteApp.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import SwiftUI

@main
struct SpaceTourismSiteApp: App {
    @StateObject var vm = ViewModel()
    @StateObject var vr = ViewRouter()
    @StateObject var coreVM = CoreDataViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(coreVM: coreVM)
                .environmentObject(vm)
                .environmentObject(vr)
                .environment(\.managedObjectContext, coreVM.manager.context)
            
        }
    }
}
