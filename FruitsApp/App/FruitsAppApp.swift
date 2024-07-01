//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 29/06/24.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    @AppStorage("onboarding") var isOnboardingViewActive = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingViewActive{
                    OnboardingView()
            }else{
                    ContentView(fruits: fruits)
            }
        }
    }
}
