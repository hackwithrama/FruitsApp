//
//  SourceLinkView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct SourceLinkView: View {
    var fruit: Fruit
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!,
                     label: {
                    HStack{
                        Text("Wikipedia")
                        Image(systemName: "arrow.up.right.square")
                    }
                })
            }
            .font(.footnote)
        }
    }
}

#Preview {
    let fruitsData: [Fruit] = fruits
    return SourceLinkView(fruit: fruitsData[0])
}
