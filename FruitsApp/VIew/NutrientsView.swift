//
//  NutrientsView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct NutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100gm"){
                ForEach(0..<nutrients.count, id: \.self){item in
                    LabeledContent{
                        Text("\(fruit.nutrition[item])")
                            .multilineTextAlignment(.trailing)
                    }label: {
                        HStack{
                            Image(systemName: "info.circle")
                            Text("\(nutrients[item])")
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .fontWeight(.bold)
                    }
                }
            }
        }//: Box
    }
}

#Preview {
    NutrientsView(fruit: fruits[0])
}
