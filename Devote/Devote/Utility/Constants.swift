//
//  Constants.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import Foundation
import SwiftUI

//MARK: - FORMATER

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

//MARK: - UI
var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
//MARK: - UX
