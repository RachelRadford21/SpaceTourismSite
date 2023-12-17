//
//  JourneyModel.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation

struct Journey: Codable {
    let destinations: [Destination]
    let crew: [Crew]
    let technology: [Technology]
}
