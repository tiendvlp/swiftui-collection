//
//  MapView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 23.0, longitudeDelta: 23.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        return mapRegion
    }()
    let location: [LocationModel] = Bundle.main.decode("locations.json")
    //MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: location) { item in
            //Option A: Default pin
            //MapPin(coordinate: item.location, tint: .accentColor)
            //Option B: More easy
            // MapMarker(coordinate: item.location, tint: .accentColor)
            //Option C: Custom pin
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }
            // Complex map annotation
            
            MapAnnotation (coordinate: item.location) {
                MapAnnotationView(location: item).onTapGesture {
                    withAnimation(.easeIn) {
                    region.span = MKCoordinateSpan(latitudeDelta: (region.span.latitudeDelta > 10 ? region.span.latitudeDelta - 10 : 0), longitudeDelta: region.span.longitudeDelta > 10 ? region.span.longitudeDelta - 10 : 0)
                    region.center = CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude)
                    }
                }
            }
            
        }//: Map
        .edgesIgnoringSafeArea(.bottom)
        .edgesIgnoringSafeArea(.top)
        .overlay(HStack {
            Image("compass")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Text("Latitude: ")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.span.latitudeDelta)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                HStack {
                    Text("Longitude: ")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    Spacer()
                    Text("\(region.span.latitudeDelta)")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
            
        }//: HStack
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                    .background(
                        Color.black
                            .cornerRadius(8)
                            .opacity(0.6))
                    .padding()
                 ,alignment: .top
        )
        

    }
}

//MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
