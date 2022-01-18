//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(0...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }
    }
}

//MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
