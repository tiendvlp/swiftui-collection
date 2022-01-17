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
        HStack {
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
                    .resizable()
                    .frame(width: 30, height: 30)
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
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
