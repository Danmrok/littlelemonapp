//
//  Header.swift
//  LittleLemonFoodOrdering
//
//  Created by Denys Striltsov on 15.01.2024.
//

import SwiftUI

struct Header: View {
    
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("Logo")
                    HStack {
                        Spacer()
                        if isLoggedIn == true {
                            NavigationLink(destination: UserProfile(isLoggedOut: $isLoggedIn)) {
                                Image("profile-image-placeholder")
                                    .resizable()
                                    .aspectRatio( contentMode: .fit)
                                    .frame(maxHeight: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing)
                            }
                        }
                    }
                }
            }
        }
        .frame(maxHeight: 60)
        .padding(.bottom)
        .onAppear() {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = true
            } else {
                isLoggedIn = false
            }
        }
    }
}
