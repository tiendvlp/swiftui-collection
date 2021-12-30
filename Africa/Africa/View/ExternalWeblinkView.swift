//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Text(animal.name)
//                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.com"))!)
                }
            }
            .foregroundColor(.accentColor)
        }//: BOX
    }
}

//MARK: - PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
