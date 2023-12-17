//
//  ViewRouter.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 8/3/23.
//

import Foundation

enum Pages {
    case page1, page2, page3, page4, page5, page6
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Pages = .page1
}
