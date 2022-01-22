//
//  RepeningView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 12/01/2022.
//

import SwiftUI

struct RepeningView: View {
    private let ripenings: [Ripening] = repeningsData
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                    LazyHStack (spacing: 25){
                            ForEach(ripenings) { item in
                        ItemRepeningView(ripening: item)
                    }
                    .padding(.bottom, 20)
                }
                Spacer()

            }

        }
        .padding()
    }
}

//MARK: - PREVIEW
struct RepeningView_Previews: PreviewProvider {
    static var previews: some View {
        RepeningView()
            .previewDevice("iPad Pro (9.7-inch)")
    }
}
