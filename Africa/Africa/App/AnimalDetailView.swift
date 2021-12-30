//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPPERTIES
    let animal: AnimalModel
    //MARK: - BODY
    var body: some View {
            ScrollView {
                VStack (alignment: .center) {
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)

                    Text("\(animal.name.uppercased())")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                        .background(Color.accentColor
                                        .frame(height: 6)
                                        .offset(y: 24))
                        .padding()

                    //MARK: - HEADLINE
                    Text("\(animal.headline)")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal, 10)
                        .padding()
                    
                    //MARK: - GALLERY
                    Group {
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Puctures")
                        InsetGalleryView(animal: animal)

                    }
                    .padding(.horizontal)
                    .padding(.vertical, 12)
                        
                    //MARK: - FACT
                    Group {
                        HeadingView(headingImage: "questionmark.circle", headingText: "Did you know")
                            .padding()
                        InsetFactView(animal: animal)
                    }
                    
                    //MARK: - DESCRIPTION
                    Group {
                        HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                            .padding()
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    }.padding(.horizontal)
                    //MARK: - MAP
                    Group {
                        HeadingView(headingImage: "map", headingText: "National Parks")
                            .padding()
                        InsetMapView()
                    }
                    //MARK: - LINK
                        Group {
                            HeadingView(headingImage: "book.vertical", headingText: "Learn more")
                            NavigationLink(destination: AfricaWebView(animal: animal)) {
                                ExternalWeblinkView(animal: animal)
                        }
                    }
                      
                }//: VStack
                .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
                .padding(.bottom, 42)
            }//: SCROLLVIEW
            
        
    }
}

//MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static let covers: [CoverImageModel] = Bundle.main.decode("covers.json")

    static var previews: some View {
        AnimalDetailView(animal: animals.first!)
    }
}
