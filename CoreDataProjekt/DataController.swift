//
//  DataControler.swift
//  CoreDataProjekt
//
//  Created by Slawek on 25/04/2022.
//

import CoreData
import Foundation

class dataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        container.loadPersistentStores { description,error in
            if let error = error {
                print("Core Data failed to load \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump
        }
    }
}
