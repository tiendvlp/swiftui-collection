//
//  CustomizeView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct CustomizeView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        GroupBox (label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")) {
            Divider().padding(.vertical, 4)
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                .padding(.vertical, 6)
                .frame(minHeight: 60)
                .layoutPriority(1)
                .font(.footnote)
                .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                    Text("Restarted".uppercased())
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundColor(Color.green)
                } else {
                    Text("Restart".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
            
        }
    }
}

struct CustomizeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeView()
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.light)
        CustomizeView()
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
