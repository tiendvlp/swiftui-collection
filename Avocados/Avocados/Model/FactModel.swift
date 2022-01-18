//
//  FactModel.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import Foundation


//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
