//
//  CenterModifier.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 30/12/2021.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
