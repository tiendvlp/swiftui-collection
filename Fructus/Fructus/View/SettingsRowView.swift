//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        Group {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                Spacer()
                if let content = content {
                    Text(content)
                        .foregroundColor(.gray)

                } else if let linkLabel = linkLabel, let linkDestination = linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Devlogs / MinhTien")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website", linkLabel: "FanPage", linkDestination: "www.instagram.com/dev_logs/")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
