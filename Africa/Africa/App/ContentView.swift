//
//  ContentView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct ContentView: View {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    @AppStorage("isGridViewActive") private var isGridViewActive: Bool = false
    let haptic = UIImpactFeedbackGenerator(style: .medium)

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    //MARK: - FUNCTION
    func gridSwitch () {
        gridLayout = Array(repeating: .init(.flexible()), count: gridColumn % 3 + 1)
        gridColumn = gridLayout.count

        print("Grid Number: \(gridColumn)")
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
        
    }
    var body: some View {
        NavigationView {
        Group {
            if !isGridViewActive{
                List {
                    CoverImageViewa()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        .listRowBackground(Color.black)

                    
                    ForEach(animals) {item in
                        NavigationLink(destination: {
                            AnimalDetailView(animal: item)
                        }){
                            AnimalListItemView(animal: item)
                                .padding(.vertical, 6)
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }//: NAVIGATION LINK
                        .listRowBackground(Color.black)
                    }//: LOOP
                   
                    CreditsView()
                        .modifier(CenterModifier())
                        .listRowBackground(Color.black)

                }//: LIST
                .background(.black)
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        ForEach(animals) {animal in
                            NavigationLink (destination: AnimalDetailView(animal: animal)) {
                                AnimalGridItemView(animal: animal)
                            }//: LINK
                        }//: LOOP
                    }//: LAZY GRID
                    .padding(10)
                    .animation(.easeIn)
                }// SCROLLVIEW
            } //: CONDITION
        }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack (spacing: 16) {
                        Button {
                            print("Hello")
                            isGridViewActive = false
                            haptic.impactOccurred()
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }//: BUTTON

                        
                        Button {
                            print("Hello")
                            isGridViewActive = true
                            haptic.impactOccurred()
                            gridSwitch()
                        } label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .frame(width: 20, height: 20, alignment: .center)
                            .foregroundColor(isGridViewActive ? .accentColor : .primary)                        }

                    }
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
