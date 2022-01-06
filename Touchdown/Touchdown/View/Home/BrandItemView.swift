//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    let brand: Brand
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .center) {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
        }
        .background(Color.white.cornerRadius(12))
        .cornerRadius(12)
        .background(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1).foregroundColor(colorGray))

    }
}

//MARK: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
