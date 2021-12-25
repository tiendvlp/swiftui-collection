//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Minh Tiến Đặng on 24/12/2021.
//

import SwiftUI

struct InfoPanelView: View {
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisible: Bool = false
    
    var body: some View {
        ZStack {
            Color.clear
                .frame (maxHeight: 40)
                .zIndex(0)
                .opacity(isInfoPanelVisible ? 1 : 0)
                .cornerRadius(8)
            HStack {
                //MARK: - HOTSPOT
                    Image(systemName: "circle.circle")
                        .symbolRenderingMode(.hierarchical)
                        .resizable()
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                        .frame(width: 30, height: 30)
                        .onTapGesture {
                            withAnimation(.easeOut(duration: 0.4)) {
                                isInfoPanelVisible.toggle()
                            }
                        }
                        .zIndex(3)
                
                    Spacer()
                    
                    //MARK: - INFO PANEL
                    HStack(spacing: 2) {
                        Image(systemName: "arrow.up.left.and.arrow.down.right")
                        Text("\(scale)")
                            .lineLimit(1)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.left.and.right")
                        Text("\(offset.width)")
                            .lineLimit(1)
                            .fixedSize(horizontal: false, vertical: true)

                        
                        Spacer()
                        
                        Image(systemName: "arrow.up.and.down")
                        Text("\(offset.height)")
                            .lineLimit(1)
                            .fixedSize(horizontal: false, vertical: true)

                    }
                    .font(.footnote)
                    .padding(8)
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                    .opacity(isInfoPanelVisible ? 0.8 : 0)
                    .offset(x: isInfoPanelVisible ? 0 : -400)
                    .scaleEffect(x: isInfoPanelVisible ? 1 : 0)
                    .animation(.linear(duration: 0.2), value: isInfoPanelVisible)
                    
                    Spacer()
            }
            .zIndex(1)
            .padding()
        }
        
        .frame(maxWidth: 420)
        
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
