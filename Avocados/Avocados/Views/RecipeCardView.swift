//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTEIS
    var recipe: Recipe
    //MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "bookmark")
                                    .font(Font.title.weight(.light))
                                    .foregroundColor(.white)
                                    .imageScale(.medium)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                        Spacer()
                    }
                })
            
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical)
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .italic()
                //RATES
                RecipeRatingView(recipe: recipe)
                //COOKING
                CookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 20)
            .padding(.horizontal, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

//MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
