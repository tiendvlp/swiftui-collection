//
//  HeadingView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Widlerness in Puctures")
    }
}
