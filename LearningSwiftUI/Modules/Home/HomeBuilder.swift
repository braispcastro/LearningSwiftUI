//
//  HomeBuilder.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import Foundation

final class HomeBuilder {
    
    static func build() -> HomeView {
        
        let router: HomeRouter = HomeRouter()
        let repository: HomeRepository = HomeRepository()
        let viewModel: HomeViewModel = HomeViewModel(router: router, repository: repository)
        let view: HomeView = HomeView(viewModel: viewModel)

        return view
    }
    
}
