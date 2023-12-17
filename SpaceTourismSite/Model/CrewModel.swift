//
//  CrewModel.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation

struct Crew: Codable {
    let name: String
    let images: CrewImages
    let role, bio: String
}
