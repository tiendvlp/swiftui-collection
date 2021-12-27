//
//  ViewListItemView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI

struct VideoListItemView: View {
    //MARK: - PROPERTIES
    let video: VideoModel
    //MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(8)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
                
            }//: ZStack
            VStack (alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .foregroundColor(.white)
            }//: Vstack
        }//:HStack
    }
}

//MARK: - PREVIEW
struct VideoListItemView_Preview: PreviewProvider {
    static let video: [VideoModel] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: video.first!)
    }
}
