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
    var isReverted: Bool = false
    var hasDivider: Bool = true
    //MARK: - BODY
    var body: some View {
        VStack (alignment: .center, spacing: 0){
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Spacer()
                Text(title)
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                    .lineLimit(1)
                    .scaleEffect( x: isReverted ? -1 : 1)
            }
            .padding(.bottom, 8)
            if (hasDivider) {
                Divider()
            }
        }
        .scaleEffect(x: isReverted ? -1 : 1)
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
