//
//  FruitDetailView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20){
                    FruitDetailHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20 ) {
                        // title
                        Text(fruit.title)
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        // headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // nutrients
                        NutrientsView(fruit: fruit)
                        
                        // subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            .font(.callout)
                        
                        // link
                        SourceLinkView(fruit: fruit)
                            .padding(.bottom, 40)
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640)
                }//: VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline )
            }//: Scrollview
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    let fruitsData = fruits
    return FruitDetailView(fruit: fruitsData[0])
}
