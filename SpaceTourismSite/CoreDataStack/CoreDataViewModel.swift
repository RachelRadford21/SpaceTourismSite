//
//  CoreDataViewModel.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation
import CoreData

class CoreDataViewModel: ObservableObject {
    let manager = CoreDataManager.instance
      
       @Published var destinationEntity: [DestinationEntity] = []
       @Published var techEntity: [TechnologyEntity] = []
       @Published var crewEntity: [CrewEntity] = []
     

    init() {
        self.getDestinationData()
        self.getCrew()
        self.getTech()
    }
    
    func getDestinationData() {
           let request = NSFetchRequest<DestinationEntity>(entityName: "DestinationEntity")
           
           do {
               destinationEntity = try manager.context.fetch(request)
               print("Entity: \(destinationEntity)")
               manager.container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
           }catch {
               print("Could not fetch tasks from TaskEntity: \(error)")
           }
       }
       
       func getCrew() {
           let request = NSFetchRequest<CrewEntity>(entityName: "CrewEntity")
           
           do {
               crewEntity = try manager.context.fetch(request)
               manager.container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
              
           }catch {
               print("Could not fetch tasks from TaskEntity: \(error)")
           }
       }
       func getTech() {
           let request = NSFetchRequest<TechnologyEntity>(entityName: "TechnologyEntity")
           
           do {
               techEntity = try manager.context.fetch(request)
               print("Entity: \(techEntity)")
               manager.container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
           }catch {
               print("Could not fetch tasks from TaskEntity: \(error)")
           }
       }
    
    func fetchDestinations(name: String, planetDescription: String, distance: String, image: String, travelTime: String) {
         
           let destinations = DestinationEntity(context: manager.context)

           destinations.name = name
           destinations.planetDescription = planetDescription
           destinations.distance = distance
           destinations.travel = travelTime
           destinations.image = image
           do {
         
               if manager.context.hasChanges || destinations.isUpdated  {
                   try manager.context.save()
               }

           }
           catch {
               print("Could not save destination data to Core Data: \(error)")
           }
       }
    func fetchCrew(bio: String, name: String, role: String, destinationName: String, image: String) {
          
           let crew = CrewEntity(context: manager.context)

           crew.bio = bio
           crew.crewName = name
           crew.role = role
           crew.crewImage = image
           crew.destinationName = destinationName
           print("Crew: \(String(describing: crew.crewName))")
           do {

               if manager.context.hasChanges || crew.isUpdated {
                   try manager.context.save()
               }

           }
           catch {
               print("Could not save destination data to Core Data: \(error)")
           }
       }
    
    func fetchTech(techName: String, techImage: String, techDescription: String) {
          
           let tech = TechnologyEntity(context: manager.context)
           
           tech.techName = techName
           tech.techImage = techImage
           tech.techDescription = techDescription
           do {

               if manager.context.hasChanges || tech.isUpdated {
                   try manager.context.save()
               }

           }
           catch {
               print("Could not save destination data to Core Data: \(error)")
           }
       }
}
