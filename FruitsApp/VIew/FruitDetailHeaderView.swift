//
//  FruitDetailHeaderView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct FruitDetailHeaderView: View {
    @State private var isAnimating = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.20), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .opacity(isAnimating ? 1 : 0.5)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        })
    }
}

#Preview {
    let fruitsData: [Fruit] = fruits
    return FruitDetailHeaderView(fruit: fruitsData[0])
}
