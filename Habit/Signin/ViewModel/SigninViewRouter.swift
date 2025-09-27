//
//  SigninViewRouter.swift
//  Habit
//
//  Created by Silas Borges on 26/09/25.
//

import SwiftUI

enum SigninViewRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}

enum SignUpViewRouter {
    static func makeSignUpView() -> some View {
        let viewModel = SignUpViewModel()
        return SignUpView(viewModel: viewModel)
    }
}
