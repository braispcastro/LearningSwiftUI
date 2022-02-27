//
//  NextBuilder.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import Foundation

final class NextBuilder {
    
    static func build() -> NextView {
        
        let router: NextRouter = NextRouter()
        let repository: NextRepository = NextRepository()
        let viewModel: NextViewModel = NextViewModel(router: router, repository: repository)
        let view: NextView = NextView(viewModel: viewModel)

        return view
    }
    
}
