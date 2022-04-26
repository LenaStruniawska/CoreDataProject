//
//  CoreDataProjektApp.swift
//  CoreDataProjekt
//
//  Created by Slawek on 25/04/2022.
//

import SwiftUI

@main
struct CoreDataProjektApp: App {
    @StateObject private var DataController = dataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
