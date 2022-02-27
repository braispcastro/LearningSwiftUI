//
//  HomeViewModel.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import Foundation

protocol HomeViewModelProtocol {
    func onAppear()
    func onDisappear()
    func showNextView() -> NextView
}

final class HomeViewModel: HomeViewModelProtocol, ObservableObject {
    
    @Published var viewObject: Home.ViewObject!
    
    private let router: HomeRouter!
    private let repository: HomeRepository!
    
    init(router: HomeRouter, repository: HomeRepository) {
        self.router = router
        self.repository = repository
        viewObject = Home.ViewObject()
    }
    
    // MARK: - Public Methods
    
    func onAppear() {
        print("onAppearCalled")
        viewObject.title = "Brais Castro"
        viewObject.subtitle = "iOS Developer"
        viewObject.body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    }

    func onDisappear() {
        print("onDisappearCalled")
    }
    
    func showNextView() -> NextView {
        router.nextView()
    }
    
    
    // MARK: - Private Methods
    
}
