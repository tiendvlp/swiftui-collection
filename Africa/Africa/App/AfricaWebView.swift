//
//  AfricaWebView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 30/12/2021.
//

import Foundation
import SwiftUI
struct AfricaWebView: View {
    //MARK: - PROPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
        NavigationView {
            WebView(url: URL(string: animal.link))
                .navigationBarTitle("\(animal.name) Wikipedia", displayMode: .inline)
        }
    }
}

//MARK: - PREVIEW
struct AfricaWebView_Previews: PreviewProvider {
    static let animals : [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AfricaWebView(animal: animals.first!)
    }
}
