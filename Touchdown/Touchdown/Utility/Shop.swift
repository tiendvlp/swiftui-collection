//
//  Shop.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 06/01/2022.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
