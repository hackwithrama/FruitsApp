//
//  SettingsRowView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct SettingsRowView: View {
    var labelName: String
    var labelContent: String? = nil
    var linkLabelContent: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            if labelContent != nil {
                Text(labelContent!)
            }else if  (linkLabelContent != nil && linkDestination != nil){
                Link(destination: URL(string: linkDestination!)!, label: {Text(linkLabelContent!)})
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            Text(labelName)
        }
    }
}

#Preview {
    Group{
        SettingsRowView(labelName: "Developer", labelContent: "Rama")
        SettingsRowView(labelName: "Twitter", linkLabelContent: "Twitter", linkDestination: "https://x.com/hackwithrama")
    }
}
