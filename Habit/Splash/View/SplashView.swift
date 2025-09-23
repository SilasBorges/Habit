//
//  SplashView.swift
//  Habit
//
//  Created by Silas Borges on 17/09/25.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSigInScreen:
                //navegar para a proxima tela
                viewModel.signInView()
            case .goToHomeScreen:
                Text("Carregar tela principal")
                //navegar para a proxima tela
            case .error(let msg):
                loadingView(error: msg)
              }
        }.onAppear(perform: viewModel.onAppear)
            
        }
    }

//1. Compartilhamento de Objetos - seria necessario quando fosse reutilizar essa parte do codigo
/*struct LoadingView: View {
    var body: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(.white)
                .ignoresSafeArea()
        }
    }
}
 */

// 2. Variaveis em extensoes - por ser extension so da para ver essa var dentro dessa classe e ela náo passa parametro
/*
extension SplashView {
    var loading: some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(.white)
                .ignoresSafeArea()
        }
    }
}
*/
// 3. Funcoes em extensions - por ser extension so da para ver essa func dentro dessa classe e ela pode passar parametros
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")) {
                            //faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}


#Preview {
    let viewModel = SplashViewModel()
    SplashView(viewModel: viewModel)
}
