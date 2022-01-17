//
//  HeaderModel.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 17/01/2022.
//

import Foundation

struct Header : Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subHeadline: String
}
