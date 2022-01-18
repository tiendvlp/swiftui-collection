//
//  DishesView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 17/01/2022.
//

import SwiftUI

struct DishesView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack {
                DishesItemView(title: "Toasts", image: "icon-toasts")
                DishesItemView(title: "Tacos", image: "icon-tacos")
                DishesItemView(title: "Salads", image: "icon-salads")
                DishesItemView(title: "Spreads", image: "icon-halfavo", hasDivider: false)
            }
            
            VStack {
                Rectangle()
                    .fill(.gray)
                    .clipShape(Capsule())
                    .frame(width: 1, height: 90)
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .foregroundColor(.gray)
                Rectangle()
                    .fill(.gray)
                    .clipShape(Capsule())
                    .frame(width: 1, height: 90)
            
            }
            
            VStack {
                DishesItemView(title: "Guacamole", image: "icon-guacamole", isReverted: true)
                DishesItemView(title: "Sanwich", image: "icon-sandwiches", isReverted: true)
                DishesItemView(title: "Soup", image: "icon-soup", isReverted: true)
                DishesItemView(title: "Smoothie", image: "icon-smoothies", isReverted: true, hasDivider: false)

            }
        }
    }
}

//MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
            .padding()
    }
}
