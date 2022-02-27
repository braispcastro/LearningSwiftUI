//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by Brais Castro on 20/2/22.
//

import SwiftUI

@main
struct LearningSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomeBuilder.build()
                .preferredColorScheme(.dark)
        }
    }
}
