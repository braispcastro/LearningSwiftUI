//
//  CustomButtom.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 25/2/22.
//

import SwiftUI

enum MainButtonType {
    case primary, secondary, destroy
}

struct MainButton: View {
    
    @State var tapped = false
    
    let type: MainButtonType
    let text: LocalizedStringKey
    
    private let kHeight: CGFloat = 48
    private let kCornerRadius: CGFloat = 10
    
    var body: some View {
        
        ZStack {
            switch type {
            case .primary:
                
                HStack {
                    Text(text)
                        .foregroundColor(Color.white)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .background(LinearGradient(colors: [Color.init(hex: "#237A57"), Color.init(hex: "#194038")],
                                           startPoint: .top,
                                           endPoint: .bottom)
                )
                .cornerRadius(kCornerRadius)
                .shadow(color: Color.black.opacity(tapped ? 0.3 : 0.7), radius: 15, x: 0, y: 10)
                
            case .secondary:
                
                HStack {
                    Text(text)
                        .foregroundColor(Color.white)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .background(LinearGradient(colors: [Color.init(hex: "#4B79A1"), Color.init(hex: "#283E51")],
                                           startPoint: .top,
                                           endPoint: .bottom)
                )
                .cornerRadius(kCornerRadius)
                .shadow(color: Color.black.opacity(tapped ? 0.3 : 0.7), radius: 15, x: 0, y: 10)
                
            case .destroy:
                HStack {
                    Text(text)
                        .foregroundColor(Color.white)
                        .font(.title3)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .background(LinearGradient(colors: [Color.init(hex: "#ED213A"), Color.init(hex: "#93291E")],
                                           startPoint: .top,
                                           endPoint: .bottom)
                )
                .cornerRadius(kCornerRadius)
                .shadow(color: Color.black.opacity(tapped ? 0.3 : 0.7), radius: 15, x: 0, y: 10)
            }
        }
        /*.gesture(
            DragGesture(minimumDistance: 0.0)
                .onChanged { _ in
                    withAnimation(.spring()) {
                        tapped = true
                    }
                }
                .onEnded { _ in
                    withAnimation(.spring()) {
                        tapped = false
                    }
                }
        )*/
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30) {
            MainButton(type: .primary, text: "MainButton Primary")
            
            MainButton(type: .secondary, text: "MainButton Secondary")
            
            MainButton(type: .destroy, text: "MainButton Destroy")
        }
        .preferredColorScheme(.light)
        .padding(15)
    }
}
