//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    @State private var pulstate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    // RATING
                    RecipeRatingView(recipe: recipe)
                    // COOKING
                    CookingView(recipe: recipe)
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) {item in
                            VStack(alignment: .leading, spacing: 0) {
                                Text(item)
                                    .lineLimit(nil)
                                    .multilineTextAlignment(.center)
                                    .font(.system(.body, design: .serif))
                                    .padding(.vertical, 12)
                                
                                Divider()
                            }
                        }
                    }//: VSTACK
                   
                    
                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                        
                    ForEach(recipe.instructions, id: \.self) {item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }//: VSTACK
                        
                    }//: LOOP
                }//: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(HStack {
            Spacer()
            VStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.pink)
                        .shadow(radius: 4)
                        .opacity(self.pulstate ? 1 : 0.6)
                        .scaleEffect(self.pulstate ? 1.2 : 0.8, anchor: .center)
                        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
            }
            .onAppear() {
                self.pulstate.toggle()
            }
        })
    }
}

//MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData.first!)
    }
}
