//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 03/01/2022.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        HStack {
            Button {
                withAnimation (.easeOut) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1:0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }//: BUTTON
            
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .environmentObject(Shop())
    }
}
