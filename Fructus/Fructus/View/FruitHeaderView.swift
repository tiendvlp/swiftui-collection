//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimatingImage = false
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors
                                             ), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
        }////MARK: - ZSTACK
        .frame(height: 440)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
