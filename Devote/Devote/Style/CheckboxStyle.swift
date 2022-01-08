//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    @AppStorage("isDarkMode") var isDarkMode : Bool = false
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : isDarkMode ? .white : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }//: HStack
    }
}

struct CheckboxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(true))
            .toggleStyle(CheckboxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
