//
//  CreditsView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 30/12/2021.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
            Copyright © TienDang
            All right reserved
            Better Apps ♥︎ Less Code
            """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
