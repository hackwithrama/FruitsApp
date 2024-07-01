//
//  LabelView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct LabelView: View {
    var label: String
    var image: String
    
    var body: some View {
        HStack{
            Text(label)
            Spacer()
            Image(systemName: image)
        }
    }
}

#Preview {
    LabelView(label: "Fruits", image: "info.circle")
}
