//
//  GalleryView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES
    @State private var selectedAnimal: String = "lion"
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    private let haptic = UIImpactFeedbackGenerator.init(style: .medium)
    func gridSwitch () {
        gridLayout = Array.init(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                //MARK: - SELECTED IMAGE
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 7))
                    .padding(.bottom, 40)
                //MARK: - SLIDER
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                        haptic.impactOccurred()
                    }
                // GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20) {
                    ForEach(animals) {animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = animal.image
                            }
                    }//: LOOP
                }//: GRID
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            }//: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView()
                        .ignoresSafeArea(.all))
    }
}

//MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
