//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: PROPERTIES
    @State private var isAnimating = false
    @AppStorage("onboarding") var isOnboardingViewActive: Bool?
    var fruit: Fruit
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                .cornerRadius(20)
            
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .opacity(isAnimating ? 1.0 : 0)
                    .scaleEffect(isAnimating ? 1.0 : 0.5)
                
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2 )
                
                // Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Fruit: Button start
                Button{
                    isOnboardingViewActive = false
                }label: {
                    HStack{
                        Image(systemName: "arrow.right.circle")
                            .imageScale(.large)
                        Text("Start")
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(
                        Capsule()
                            .stroke(.white,lineWidth: 2)
                    )
                }
            }//: VStack
        }//: ZStack
        .padding()
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        })
    }
}

#Preview {
    let fruit = fruits[0]
    return FruitCardView(fruit: fruit)
}
