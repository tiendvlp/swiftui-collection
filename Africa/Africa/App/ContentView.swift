//
//  ContentView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct ContentView: View {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView {
            
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                
                ForEach(animals) {item in
                    NavigationLink(destination: {
                        AnimalDetailView(animal: item)
                    }){
                        AnimalListItemView(animal: item)
                            .padding(.vertical, 6)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)

        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
