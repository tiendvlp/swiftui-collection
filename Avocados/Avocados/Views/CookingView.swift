//
//  CookingView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import SwiftUI

struct CookingView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Cooking: \(recipe.cooking)")
            }
        }//: HSTACK
        .font(.footnote)
        .foregroundColor(Color.gray)    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(recipe: recipesData[0])
    }
}
