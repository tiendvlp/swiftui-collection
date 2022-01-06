//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(sampleProduct.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            // PHOTO
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        }//: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.74)) {
                isAnimating.toggle()
            }
        }
    }
}

//MARK: - PREVIEW
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
