//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: AnimalModel
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }//: HSTACK
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
    
}
