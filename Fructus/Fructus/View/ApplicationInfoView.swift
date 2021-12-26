//
//  ApplicationInfoView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct ApplicationInfoView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        GroupBox (label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")) {
            Group {
                VStack {
                  SettingsRowView(name: "Developer", content: "Devlogs / Minh Tien")
                  SettingsRowView(name: "Designer", content: "Robert Petras")
                  SettingsRowView(name: "Platform", content: "iOS 15")
                    SettingsRowView(name: "Fanpage", linkLabel: "Instagram blogs", linkDestination: "www.instagram.com/dev_logs")
                    SettingsRowView(name: "Facebook", linkLabel: "@MinhTien", linkDestination: "www.facebook.com/tiendang0901/")
                    SettingsRowView(name: "Version", content: "1.2.0")
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct ApplicationInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationInfoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
