//
//  Constant.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 03/01/2022.
//

import Foundation
import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.gray).opacity(0.5)
// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
