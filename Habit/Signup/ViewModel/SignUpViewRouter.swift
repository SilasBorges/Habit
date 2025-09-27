//
//  SignUpViewRouter.swift
//  Habit
//
//  Created by Silas Borges on 27/09/25.
//

import SwiftUI

enum SignUpViewRouter {
    
    static func makeHomeView() -> some View {
        
    let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
