//
//  FructusView.swift
//  Fructus
//
//  Created by Minh Tiến Đặng on 26/12/2021.
//

import SwiftUI

struct FructusView: View {
    var body: some View {
        GroupBox (label: SettingLabelView(labelText: "Fructus", labelImage:"info.circle")) {
            Divider().padding(.vertical, 4)
            HStack(alignment: .center) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(9)
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many esential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                    .font(.footnote)
            }
        }
    }
}

struct FructusView_Previews: PreviewProvider {
    static var previews: some View {
        FructusView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
