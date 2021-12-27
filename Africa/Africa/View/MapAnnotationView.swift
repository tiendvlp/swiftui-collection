//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK: - PROPERTIES
    var location: LocationModel
    @State private var animation: Double = 0.0
    //MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .fill(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }//: ZStack
        
    }
}

//MARK: - PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [LocationModel] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
