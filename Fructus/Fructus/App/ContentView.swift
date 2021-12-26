//
//  ContentView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 25/12/2021.
//

import SwiftUI


struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var color: Color = .blue
    @State private var isShowingSettings: Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink (destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }//: NavigationLink
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
                    .background(color)
            }//: Button
                                    
            )
            .sheet(isPresented: $isShowingSettings) {
                SettingViews()
            }
        }

        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
        }
    }
}

//MARK: - RENDER
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
