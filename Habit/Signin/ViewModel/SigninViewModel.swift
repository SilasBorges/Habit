//
//  SigninViewModel.swift
//  Habit
//
//  Created by Silas Borges on 22/09/25.
//

import SwiftUI

class SigninViewModel: ObservableObject {
    
    
    @Published var uiState: SigninUiState = .none
    
    func login (email: String, password: String) {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.uiState = .goToHomeScreen
        }
        
    }
}

extension SigninViewModel {
    func homeView() -> some View {
        return SigninViewRouter.makeHomeView()
    }
    
    func signUpView() -> some View {
        return SignUpViewRouter.makeSignUpView()
    }
}
