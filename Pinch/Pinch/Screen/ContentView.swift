//
//  ContentView.swift
//  Pinch
//
//  Created by Minh Tiến Đặng on 24/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAnimating = false
    @State private var imageScale : CGFloat = 1
    @State private var imageOffset: CGSize = .zero
    
    func resetImageState () {
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.clear
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                   
                //MARK: - Drag gesture
                    .gesture(DragGesture().onChanged({ gesture in
                        withAnimation(.linear(duration: 1)) {
                            imageOffset = gesture.translation
                        }
                    }).onEnded({ Gesture in
                        if imageScale <= 1 {
                                resetImageState()
                        }
                    }))
            } //:ZStack
            .navigationTitle("Pich & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                withAnimation(.linear(duration:1)) {
                    isAnimating = true
                }
            }.overlay(
                InfoPanelView(scale: imageScale, offset: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                , alignment: .top)
            
        }//: Navigation
        .onTapGesture (count: 2) {
            if imageScale == 1 {
                withAnimation(.spring()) {
                    imageScale = 3
                }
            } else {
                    resetImageState()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
