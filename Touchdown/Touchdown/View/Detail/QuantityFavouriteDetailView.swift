//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 06/01/2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPERTIES
    @State private var counter: Int = 0
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }//: BUTTON
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()

            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(Color.pink)
            }


        }//: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
