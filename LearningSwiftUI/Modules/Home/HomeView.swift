//
//  HomeView.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color(hex: "#2C5364"), Color(hex: "#203A43"), Color(hex: "#0F2027")],
                               startPoint: .top,
                               endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Text(viewModel.viewObject.title)
                        .font(.largeTitle)
                    Text(viewModel.viewObject.subtitle)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.bottom, 8)
                    Text(viewModel.viewObject.body)
                        .font(.body)
                    Spacer()
                    NavigationLink(destination: viewModel.showNextView) {
                        MainButton(type: .primary, text: "Next")
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                .padding()
            }
            .navigationBarHidden(true)
            .onAppear(perform: viewModel.onAppear)
            .onDisappear(perform: viewModel.onDisappear)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBuilder.build()
    }
}
