//
//  InsetFactView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GROUPBOX
    }
}

//MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals.first!)
            .padding()
    }
}
