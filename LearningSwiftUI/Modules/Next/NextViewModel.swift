//
//  NextViewModel.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 27/2/22.
//

import Foundation

protocol NextViewModelProtocol {
    func onAppear()
    func onDisappear()
}

final class NextViewModel: NextViewModelProtocol, ObservableObject {
    
    @Published var viewObject: Next.ViewObject!
    
    private let router: NextRouter!
    private let repository: NextRepository!
    
    init(router: NextRouter, repository: NextRepository) {
        self.router = router
        self.repository = repository
        viewObject = Next.ViewObject()
    }
    
    // MARK: - Public Methods
    
    func onAppear() {
        print("onAppearCalled")
    }

    func onDisappear() {
        print("onDisappearCalled")
    }
    
    
    // MARK: - Private Methods
    
}
