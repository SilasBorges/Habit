//
//  SplashViewModel.swift
//  Habit
//
//  Created by Silas Borges on 22/09/25.
//

import SwiftUI

class SplashViewModel : ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            //aqui e chamado depois de 2 segundos
            self.uiState = .error("Erro na resposta do servidor")
        }
    }
}
