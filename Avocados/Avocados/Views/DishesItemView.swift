//
//  DishesItemView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 17/01/2022.
//

import SwiftUI

struct DishesItemView: View {
    //MARK: - PROPERTIES
     var title: String
     var image: String
    //MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Spacer()
                Text(title)
                    .font(.title2)
                    .foregroundColor(.gray)
            }
        }
    }
}

//MARK: - PREVIEW
struct DishesItemView_Previews: PreviewProvider {
    static var previews: some View {
        DishesItemView(title: "Soup", image: "icon-soup")
            .previewLayout(.sizeThatFits)
            .padding()
            .frame(width: 300, height: 80, alignment: .center)
    }
}
