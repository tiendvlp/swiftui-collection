//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title3)
                    .foregroundColor(.white)
            }//: BUTTON
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title3)
                    .foregroundColor(.white)
            }//: BUTTON
        }//:HSTACK
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
