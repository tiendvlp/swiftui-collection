//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 05/01/2022.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    let player: Player
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players.first!)
    }
}
