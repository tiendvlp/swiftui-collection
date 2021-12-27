//
//  VideoModel.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import Foundation

struct VideoModel: Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computer Properties
    var thumbnail: String {
        "video-\(id)"
    }
}
