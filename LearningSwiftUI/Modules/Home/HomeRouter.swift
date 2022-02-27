//
//  HomeRouter.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import Foundation

protocol HomeRouterProtocol {
    func nextView() -> NextView
}

final class HomeRouter: HomeRouterProtocol {
    
    func nextView() -> NextView {
        return NextBuilder.build()
    }
    
}
