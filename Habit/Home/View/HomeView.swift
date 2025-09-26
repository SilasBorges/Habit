//
//  HomeView.swift
//  Habit
//
//  Created by Silas Borges on 26/09/25.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    var body: some View {
        Text("Ola Home Page")
    }
}

#Preview {
    let viewModel = HomeViewModel()
    HomeView(viewModel: viewModel)
}
