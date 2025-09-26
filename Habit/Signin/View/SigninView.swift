//
//  SigninView.swift
//  Habit
//
//  Created by Silas Borges on 22/09/25.
//

import SwiftUI

struct SigninView : View {
    
    @ObservedObject var viewModel: SigninViewModel
    
    @State var email = ""
    @State var password = ""
    @State var action: Int? = 0
    @State var navigationHidden = true
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .center, spacing: 20) {
                    
                    Spacer(minLength: 36)
                    
                    VStack(alignment: .center, spacing: 8) {
                        Image ("logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 48)
                        
                        Text("Login")
                            .foregroundColor(.orange)
                            .font(Font.system(.title).bold())
                            .padding(.bottom, 8)
                        
                        numberField
                        
                        passwordField
                        
                        enterButton
                        
                        registerLink
                        
                        Text("Copyright @YYY")
                            .font(Font.system(size: 16).bold())
                            .padding(.top, 16)
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 32)
                .background(Color.white)
                .navigationBarTitle("Login", displayMode: .inline)
                .navigationBarHidden(navigationHidden)
        }
    }
}

extension SigninView {
    var numberField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SigninView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.orange)
    }
}

extension SigninView {
    var enterButton: some View {
        Button("Entrar") {
            //acontece o evento de click
        }
    }
}

extension SigninView {
    var registerLink: some View {
        VStack {
            Text("Ainda nao possui um login ativo?")
                .foregroundStyle(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink(destination: Text("Tela de cadastro"),
                               tag: 1,
                               selection: $action,
                               label: {EmptyView()})
                
                Button("Realize seu Cadastro") {
                    self.action = 1
                }
            }
        }
    }
}

#Preview {
    let viewModel = SigninViewModel()
    SigninView(viewModel: viewModel)
}
