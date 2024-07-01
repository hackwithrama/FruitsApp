//
//  ContentView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive = false
    @State private var isSettingShowing: Bool = false
    var fruits: [Fruit]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(fruits.shuffled()){fruit in
                    NavigationLink{
                        FruitDetailView(fruit: fruit)
                    }label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar{
                Button{
                    isSettingShowing = true
                }label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.horizontal, 20)
                }
                .sheet(isPresented: $isSettingShowing){
                    SettingsView()
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                }
            }
        }//: NavigationStack
    }
}

#Preview {
    let fruitsData = fruits
    return ContentView(fruits: fruitsData)
}
