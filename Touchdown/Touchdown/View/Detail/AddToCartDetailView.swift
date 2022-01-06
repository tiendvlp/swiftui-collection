//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 06/01/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }//: BUTTON
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.blue, blue: sampleProduct.green))
        .clipShape(Capsule())

    }
}

//MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
