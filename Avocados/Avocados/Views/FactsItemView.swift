//
//  FactsItemView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 18/01/2022.
//

import SwiftUI

struct FactsItemView: View {
    
    //MARK: - PROPERTIES
    var fact: Fact
    //MARK: - BODY
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient.init(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .padding(.leading, 50)
            HStack {
                ZStack {
                    Circle().fill(Color.white)
                    Circle()
                        .fill(LinearGradient(gradient: Gradient.init(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .leading, endPoint: .trailing))
                        .padding(9)
                    Image(fact.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(15)
                 
                }
                .frame(width: 100)
                    
                Text(fact.content)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.top, 12)
                    .padding(.trailing, 20)
                    .padding(.leading, 10)
                    .padding(.bottom, 12)
            }//: HSTACK
        }//: ZSTACK
    }
}

//MARK: - PREVIEW
struct FactsItemView_Previews: PreviewProvider {
    static var previews: some View {
        FactsItemView(fact: factsData.first!)
            .previewLayout(.fixed(width: 550, height:200))
            .padding()
    }
}
