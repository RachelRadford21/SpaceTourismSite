//
//  DestinationModel.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation

struct Destination: Codable {
    let name: String
    let images: CrewImages
    let description, distance, travel: String
}
