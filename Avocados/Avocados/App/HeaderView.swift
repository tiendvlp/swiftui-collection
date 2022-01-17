//
//  HeaderView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 16/01/2022.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: - PROPERTIES
    @State private var showHeadline: Bool = false
    var header: Header
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    //MARK: - BODY
    var body: some View {
        ZStack (alignment: .bottomLeading) {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack (alignment: .center, spacing: 0) {
                Text(header.headline)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                Text(header.subHeadline)
                    .font(.system(.footnote))
                    .lineLimit(2)
                    .padding(.top, 5)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .shadow(radius: 5)
            }
            .padding(.top, 20)
            .frame(maxWidth: 250)
            .padding(.bottom, 12)
            .padding(.horizontal, 15)
            .padding(.leading, 15)
            .background(
                    ZStack (alignment: .leading){
                        Rectangle()
                            .fill(Color("ColorGreenLight"))
                            .frame(width: 4)
                            .padding(.vertical, 0)
                            .padding(.horizontal, 0)
                            .zIndex(1)
                       Color("ColorBlackTransparentLight")
                            .padding(.horizontal, 0)
                    }//: HSTACK
                )
            .offset(x: 55, y: showHeadline ? -55 : 150)
            .animation(slideInAnimation)
            .onAppear {
                self.showHeadline = true
            }
            }//:ZSTACK
        .frame(maxHeight: 320)

        }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData.first!)
            .previewLayout(.sizeThatFits)
            .frame(width: 480, height: 320)
            .environment(\.colorScheme, .dark)
    }
}
