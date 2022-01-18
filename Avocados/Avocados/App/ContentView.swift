//
//  ContentView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 11/01/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
    var headers: [Header] = headersData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20) {
                //MARK: - HEADER
                ScrollView (.horizontal){
                    HStack(alignment: .top
                           , spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//: HSTACK

                }//: SCROLLVIEW
                .ignoresSafeArea(.all)
                .padding(0)
                //MARK: - BODY
                //MARK: - BODY - DISHES
                Text("Avocados Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
          
                
                //MARK: - FOOTER
                Text("All About Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 85)
        }
        .ignoresSafeArea(.all)
    }

}

struct TitleModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .previewDevice("iPad Air (4th generation)")
.previewInterfaceOrientation(.landscapeLeft)
    }
}
