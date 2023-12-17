//
//  ViewModel.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation

class ViewModel: ObservableObject {
    var coreVM = CoreDataViewModel()
    @Published var journey: Journey?
    @Published var destinations: [Destination] = []
    @Published var crew: [Crew] = []
    @Published var technology: [Technology] = []
    @Published var destinationImages: [Destination] = []
    @Published var image = ""
    @Published var planetName = ""
    @Published var planetDescription = ""
    @Published var distance = ""
    @Published var travelTime = ""
    @Published var planetNameSelected = ""
    @Published var userName = ""
    @Published var password = ""
    @Published var showAlert = false
    @Published var isSelected = 0
    func fetchData() {
            
            if let path = Bundle.main.url(forResource: "data", withExtension: "json") {
                do {
                    
                    let data = try Data(contentsOf: path)
                    
                    let response = try JSONDecoder().decode(Journey.self, from: data)
                    
                    DispatchQueue.main.async {
                        self.journey = response
                        self.destinations = self.journey?.destinations ?? []
                        self.technology = self.journey?.technology ?? []
                        self.crew = self.journey?.crew ?? []
                        self.addDestinations()
                        print(self.technology)
                        print(response)
                        
                    }
                } catch {
                    print("Could not fetch Journey Data")
                }
            }
            
        }
        func addDestinations() {
            for destination in self.destinations {
                coreVM.fetchDestinations(name: destination.name, planetDescription: destination.description, distance: destination.distance, image: destination.images.png, travelTime: destination.travel)
            }
        }
    
    func addCrew() {
           for member in self.crew {
               coreVM.fetchCrew(bio: member.bio, name: member.name, role: member.role, destinationName: planetNameSelected, image: member.images.png)
               
           }
       }
       func addTech() {
           for tech in self.technology {
               coreVM.fetchTech(techName: tech.name, techImage: tech.images.portrait, techDescription: tech.description)
           }
       }
}
