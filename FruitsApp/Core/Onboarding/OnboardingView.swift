//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive = true
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){fruit in
                FruitCardView(fruit: fruit)
            }
        }//: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
