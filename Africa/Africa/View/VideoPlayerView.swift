//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    //MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
               // Text(videoTitle)
                    
            }
            .overlay(Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                     ,alignment: .topLeading)
        }//:Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
