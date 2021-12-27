//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Minh Tiến Đặng on 27/12/2021.
//

import SwiftUI

struct MotionAnimationView: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    @State private var randomCircle = Int.random(in: 12...16)
    //MARK: - FUNCTION
    // 1. RANDOM COORINATE
    func randomCooridnate (max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    // 2. RANDOM SIZE
    func randomSize () -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    // 3. RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // 4. RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    // 5. RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2.0)
    }
    //MARK: - BODY
    var body: some View {
        GeometryReader {geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(x: randomCooridnate(max: geometry.size.width), y: randomCooridnate(max: geometry.size.height))
                        .animation(Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5).repeatForever().speed(randomSpeed()).delay(randomDelay()))
                        .onAppear {
                            isAnimating = true
                        }
                }//: LOOP
            }
            .drawingGroup()
        }
    }
}

//MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
