//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 30/12/2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
