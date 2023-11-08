//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-11-07.
//

import Foundation

class LogViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
       try await AuthService.shared.login(withEmail: email, password: password)
    }
}
