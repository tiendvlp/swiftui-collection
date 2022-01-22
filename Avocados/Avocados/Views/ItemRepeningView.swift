//
//  ItemRepeningView.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 22/01/2022.
//

import SwiftUI

struct ItemRepeningView: View {
    //MARK: - PROPERTIES
    @State private var avocadoSlideFallDownAnimation: Bool = false
    let ripening: Ripening
    private var screenWidth : CGFloat {
        UIScreen.main.bounds.size.width
    }
    private var screenHeight : CGFloat {
        UIScreen.main.bounds.size.height
    }
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    var body: some View {
        VStack {
                ZStack {
                    Circle()
                        .fill(.white)
                        .scaledToFit()
                        .padding(5)
                    Group {
                        Circle()
                            .fill(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom))
                            .scaledToFit()
                            .padding(10)
                        Image(ripening.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .padding(15)
                    }
                    //.offset( x:0,y: avocadoSlideFallDownAnimation ? 0 : -500)
                    //.opacity(avocadoSlideFallDownAnimation ? 1 : 0)
                    .animation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5).delay(01))
                    .onAppear {
                        avocadoSlideFallDownAnimation = true
                    }
                }
                .offset(y: 75)
                .frame(width: 120, height: 120)
                .zIndex(1)
                VStack {
                    Text(ripening.stage)
                        .font(.system(.title2, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenedium"))
                        .padding(.top)
                    Text("Stage")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                        .padding(.bottom, 20)
                    Text(ripening.title)
                        .font(.system(.title2, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                        .padding(.horizontal, 10)
                        .frame(minWidth: 220)
                        .padding(.vertical, 12)
                        .background(LinearGradient(colors: [Color("ColorGreenLight"), .white], startPoint: .bottom, endPoint: .top))
                        .cornerRadius(12)
                        .padding(.bottom, 40)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 5, x: 0, y: 5)
                    
                    Text(ripening.description)
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Text(ripening.ripeness.uppercased())
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                        .padding(.vertical)
                        .background(LinearGradient(colors: [.black.opacity(0.6), Color("ColorGreenMedium")], startPoint: .bottom, endPoint: .top))
                        .cornerRadius(12)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 5, x: 0, y: 5)
                        .padding(.vertical, 40)
                    
                    Text(ripening.instruction)
                        .font(.system(.body, design: .serif))
                        .lineLimit(3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
                .frame(width: 260, height: 485)
                .padding()
                .background(
                    LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .bottom, endPoint: .top)
                        .cornerRadius(20)
                    )
            }
        
    }
}

struct ItemRepeningView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRepeningView(ripening: repeningsData.first!)
            .previewLayout(.fixed(width: 320, height: 00))
    }
}
