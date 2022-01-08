//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import SwiftUI

#if canImport(UIKit)

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#endif

