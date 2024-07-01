//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Ramachandran Varadaraju on 01/07/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("onboarding") var isOnboardingViewActive = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    // section 1
                    GroupBox(
                        label:
                            LabelView(label: "Fruits", image: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fats, sodium and calorie and are low in fruits. None have cholesterol. Fruits are source of many essential minerals and vitamins, including pottasium and much more")
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .padding()
                    
                    // section 2
                    GroupBox(
                        label:
                            LabelView(label: "Customization", image: "paintbrush")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you with you can restart the application by toggle the switch in this box. That way it start the onboarding process and you will see the welcome screen again")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 8)
                        Toggle(isOnboardingViewActive ? "Restarted" : "Restart", isOn: $isOnboardingViewActive)
                        
                    }
                    .padding()
                    
                    
                    // section 2
                    GroupBox(
                        label:
                            LabelView(label: "Application", image: "apps.iphone")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        SettingsRowView(labelName: "Application", labelContent: "Rama")
                        SettingsRowView(labelName: "Designer", labelContent: "Shivani")
                        SettingsRowView(labelName: "Compatiblity", labelContent: "iOS 17")
                        SettingsRowView(labelName: "Website", linkLabelContent: "Hackwithrama", linkDestination: "https://hackwithrama.com")
                        SettingsRowView(labelName: "X.com", linkLabelContent: "X.com", linkDestination: "https://x.com/hackwithrama")
                        SettingsRowView(labelName: "SwiftUI", labelContent: "V5")
                        SettingsRowView(labelName: "Version", labelContent: "1.0.0")
                    }
                    .padding()
                }//: VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar{
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .padding(.horizontal, 20)
                    }
                }
            }//: Scrollview
        }//: Navigation stack
    }
}

#Preview {
    SettingsView()
}
