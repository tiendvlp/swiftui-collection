//
//  RepeningModel.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 22/01/2022.
//

import SwiftUI

//MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

