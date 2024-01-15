//
//  Homes.swift
//  LittleLemonFoodOrdering
//
//  Created by Denys Striltsov on 15.01.2024.
//

import SwiftUI

struct Home: View {

    @State var isLoggedIn = false
    
    
    var body: some View {
        
        if isLoggedIn == false {
            Onboarding(isLoggedIn: $isLoggedIn)
           
        } else {
            MainScreen(isLoggedIn: $isLoggedIn)
                .navigationBarBackButtonHidden()
        }
        
            
    }
}

#Preview {
    Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
}
