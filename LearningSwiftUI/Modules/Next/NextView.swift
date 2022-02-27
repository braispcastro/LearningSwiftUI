//
//  NextView.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import SwiftUI

struct NextView: View {
    
    @ObservedObject var viewModel: NextViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(hex: "#2C5364"), Color(hex: "#203A43"), Color(hex: "#0F2027")],
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()
            
            Text("Hello, world!")
        }
        .onAppear(perform: viewModel.onAppear)
        .onDisappear(perform: viewModel.onDisappear)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .foregroundColor(.white)
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextBuilder.build()
    }
}
