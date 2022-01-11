//
//  ListRowItemView.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    @AppStorage("isDarkMode") var isDarkMode : Bool = false
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : isDarkMode ? Color.white : Color.black)
                .padding(.vertical, 12)
                .animation(.default)
        }//: TOGGlE
        .listRowBackground((isDarkMode ? Color(uiColor: .black).opacity(0.7): Color(uiColor: .white))
                            .opacity(0.95)
                            .blur(radius: 1.3, opaque: false))
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        }
    }
}
