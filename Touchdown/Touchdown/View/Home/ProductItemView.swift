//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    let product: Product
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//: VSTACK
    }
}

//MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products.first!)
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
