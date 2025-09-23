//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Silas Borges on 22/09/25.
//

import SwiftUI

enum SplashViewRouter {
    
    static func makeSignInView() -> some View {
        let viewModel = SigninViewModel()
        return SigninView(viewModel: viewModel)
    }
}
