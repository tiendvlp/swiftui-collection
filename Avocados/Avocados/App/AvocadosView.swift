//
//  AvocadosView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 12/01/2022.
//

import SwiftUI

struct AvocadosView: View {
    @State var pulsateAnimation: Bool = false
    var body: some View {
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                Image("avocado")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 230, height: 230, alignment: .center)
                    .shadow(color: .black.opacity(0.8), radius: 7, x: 5, y: 7)
                    .scaleEffect(pulsateAnimation ? 1 : 0.9)
                    .opacity(pulsateAnimation ? 1 : 0.5)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                Text("AVOCADOS")
                    .font(.system(size: 42, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.8), radius: 5, x: 0, y: 5)
                    .padding(.top, 70)
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more
""")
                    .font(.footnote)
                    .frame(maxWidth: 300, alignment: .center)
                    .lineLimit(nil)
                    .lineSpacing(8)
                    .multilineTextAlignment(.center)
                    .padding(.top, 15)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.8), radius: 5, x: 5, y: 5)
                Spacer()
            }
            .background(
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.top))
            .onAppear(perform: {
                pulsateAnimation = true
            })
            
            .edgesIgnoringSafeArea(.all)
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .preferredColorScheme(.dark)
    }
}
