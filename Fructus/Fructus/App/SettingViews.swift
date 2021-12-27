//
//  SettingViews.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct SettingViews: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    FructusView()
                        .padding(.vertical, 8)
                        .padding(.horizontal, 18)
                    CustomizeView()
                        .padding(.vertical, 8)
                        .padding(.horizontal, 18)

                    ApplicationInfoView().padding(.vertical, 8)
                        .padding(.horizontal, 18)
                }
            }//: SCROLL
            .navigationTitle(Text("Settings "))
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
        }//: NAVIGATION
    
    }
}

//MARK: - PREVIEW
struct SettingViews_Previews: PreviewProvider {
    static var previews: some View {
        SettingViews()
            .previewDevice("iPhone 12 Pro")
    }
}
