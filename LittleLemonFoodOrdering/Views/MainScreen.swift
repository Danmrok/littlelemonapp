//
//  MainScreen.swift
//  LittleLemonFoodOrdering
//
//  Created by Denys Striltsov on 15.01.2024.
//

import SwiftUI

struct MainScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                Header(isLoggedIn: $isLoggedIn)
                Menus()
            }
        }
    }
}

#Preview {
    MainScreen(isLoggedIn: .constant(true)).environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
