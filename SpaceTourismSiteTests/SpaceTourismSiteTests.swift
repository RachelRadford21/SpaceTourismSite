//
//  SpaceTourismSiteTests.swift
//  SpaceTourismSiteTests
//
//  Created by Rachel Radford on 7/31/23.
//

import XCTest
@testable import SpaceTourismSite

final class SpaceTourismSiteTests: XCTestCase {

    func test_initalModelValue_hasValues() {
          
           if let path = Bundle.main.url(forResource: "data", withExtension: "json") {
               do {
                   
                   let data = try Data(contentsOf: path)
                   
                   let response = try JSONDecoder().decode(Journey.self, from: data)
                   
                   XCTAssertNotNil(response)
               } catch {
                   XCTFail("Missing json file")
                   print("Could not fetch Journey Data")
               }
           }
       }
       

}
