//
//  InsetMapView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    //MARK: - PROPERTIES
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(NavigationLink(destination: MapView()){
                HStack {
                    Image(systemName: "mappin.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    Text("Location")
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                }//: HSTACK
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(
                    Color.black
                        .opacity(0.4)
                        .cornerRadius(8))
            }//: NavigationLink
                        .padding()
                     , alignment: .topTrailing // set the allignment for Overlay
            )
            .frame(height: 256)
            .cornerRadius(12)
            
    }
}
//MARK: - PREVIEW
struct InsetMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsetMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
