//
//  Movier_TrackerApp.swift
//  Movier Tracker
//
//  Created by Alexandre C do Carmo on 17/05/22.
//

import SwiftUI

@main
struct Movier_TrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            let movieStorage = MovieStorage()
            
            MovieList()
                .environment(\.managedObjectContext, persistenceController.container.viewContext).environmentObject(movieStorage)
        }
    }
}
