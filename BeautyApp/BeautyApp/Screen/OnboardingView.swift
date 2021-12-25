//
//  OnboardingView.swift
//  BeautyApp
//
//  Created by Minh Tiến Đặng on 23/12/2021.
//

import SwiftUI

struct OnboardingView: View {
    @State @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    @State private var imageOffset: CGSize = .zero
    @State private var indicatorOnly : Double = 0
    
    let hapticFeedback = UINotificationFeedbackGenerator()
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack (spacing:20) {
                //MARK: - HEADER
                Spacer()
                VStack (spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                        It's not how much we give but
                        how much love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                //MARK: - CENTER
                ZStack {
                    CircleGroupView(ShapeColor: Color.white, ShapeOpacity: 0.2)
                        .offset(x: imageOffset.width * -1)
                        .blur(radius: abs(imageOffset.width / 5))
                        .animation(.easeOut(duration: 0.1), value: imageOffset)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.easeOut(duration: 1), value: isAnimating)
                        .rotationEffect(.degrees(Double(imageOffset.width / 20)))
                        .offset(x: imageOffset.width * 1.2)
                        .gesture(
                            DragGesture()
                                .onChanged{ gesture in
                                    if abs(imageOffset.width) <= 150 {
                                        withAnimation(.linear(duration: 0.25)) {
                                            indicatorOnly = 0
                                        }
                                        imageOffset = gesture.translation
                                    }
                                }
                                .onEnded({ gesture in
                                    withAnimation(.linear(duration: 0.25)) {
                                        indicatorOnly = 1
                                    }
                                    imageOffset = .zero
                                })
                        )
                        .animation(.easeOut(duration: 0.8), value: imageOffset)
                        
                }//: Center
                .overlay(Image(systemName: "arrow.left.and.right.circle")
                            .font(.system(size: 44, weight: .ultraLight))
                            .foregroundColor(.white)
                            .opacity(isAnimating ? 0.5 : 0)
                            .animation(
                                .easeOut(duration: 1.5)
                                    .repeatForever()
                                    .delay(2)
                                ,value: isAnimating)
                            .offset(y: 20)
                            .opacity(indicatorOnly),
                         alignment: .bottom
                            
                )
                Spacer()
                //MARK: - FOOTER
                ZStack {
                    // PARTS OF THE CUSTOM BUTTON
                    
                    // 1. BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    // 2. CALL-TO-ACTION(STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    // 3. CAPSULE (DYNAMIC WIDTH)
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80)
                        Spacer()
                    }
                    // 4. CIRCLE (DRAGAGABLE)
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .offset(x: buttonOffset)
                    .gesture(DragGesture().onChanged({ gesture in
                        
                        let width = gesture.translation.width
                        if width > 0 && buttonOffset <= buttonWidth - 80{
                            buttonOffset = gesture.translation.width
                            
                        }
                    }).onEnded({ gesture in
                        withAnimation(.linear(duration: 0.25)) {
                            indicatorOnly = 0
                        }
                        withAnimation(.easeOut(duration: 0.5)) {
                            if buttonOffset > buttonWidth / 2 {
                                hapticFeedback.notificationOccurred(.success)
                                playSound(sound: "chimeup", type: "mp3")
                                buttonOffset = buttonWidth - 80
                                isOnboardingViewActive = false
                                
                            } else {
                                hapticFeedback.notificationOccurred(.warning)
                                buttonOffset = 0
                            }
                        }
                    }))
                   
                        Spacer()
                    }//:HStack
                    
                } //: FOOTER
                .frame(width:buttonWidth, height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0: 40 )
                .animation(.easeOut(duration: 1), value: isAnimating)
            } //: VSTACK
            .onAppear {
                isAnimating = true
                indicatorOnly = 1.0
            }
            .preferredColorScheme(.dark)
        } //: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
