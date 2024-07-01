//
//  ContentView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false
    
    var body: some View {
        VStack{
            Text("Home View")
            Button{
                isOnboardingViewActive = true
            }label: {
                Text("Onboarding view")
            }
        }
    }
}

#Preview {
    ContentView()
}
