//
//  CoreDataManager.swift
//  SpaceTourismSite
//
//  Created by Rachel Radford on 7/31/23.
//

import Foundation
import CoreData

class CoreDataManager {
    static let instance = CoreDataManager() // Singleton
    let container: NSPersistentContainer
    let context: NSManagedObjectContext

    init() {
        container = NSPersistentContainer(name: "CoreDataModel")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading Core Data: \(error)")
            }
        }
        context = container.viewContext
    }
    func save() {
        do{
            if context.hasChanges {
                try context.save()
                print("Saved Sucessfully")
            }
        }catch {
            print("Could not save to Core Data: \(error)")
        }

    }
}
