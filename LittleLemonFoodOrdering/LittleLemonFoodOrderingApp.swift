//
//  LittleLemonFoodOrderingApp.swift
//  LittleLemonFoodOrdering
//
//  Created by Denys Striltsov on 15.01.2024.
//

import SwiftUI

@main
struct LittleLemonFoodOrderingApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
