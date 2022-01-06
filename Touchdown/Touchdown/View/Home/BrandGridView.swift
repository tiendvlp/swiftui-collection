//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        VStack {
            TitleView(title: "Brands")
            ScrollView(.horizontal) {
                LazyHGrid (rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                    ForEach(brands) {brand in
                        BrandItemView(brand: brand)
                            .scaledToFit()
                    }//: LOOP
                }//: LAZYHGRID
                .frame(height: 200)
                .padding(15)
            }//: SCROLLVIEW
        }
    }
}

//MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
