//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import SwiftUI

struct BackgroundImageView: View {
    //MARK: - PREVIEW
    //MARK: - BODY
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
