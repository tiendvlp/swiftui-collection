//
//  HomeView.swift
//  BeautyApp
//
//  Created by Minh Tiến Đặng on 23/12/2021.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            //MARK: - HEADER
            Spacer()
            //MARK: - CENTER
            VStack {
                ZStack {
                    CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .offset(y: isAnimating ? 35 : -35)
                        .animation(.easeInOut(duration: 4)
                                    .repeatForever()
                                   ,value: isAnimating)
   
                        
                }//:HStack
                Text("The time that leads to mastery is dependent on the intensity of our focus")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }//:VStack
            .onAppear {
               // DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                   isAnimating = true
                //})
            }
            //MARK: - FOOTER
            Spacer()
            Button (action:{
                playSound(sound: "success", type: "m4a")
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
//
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
