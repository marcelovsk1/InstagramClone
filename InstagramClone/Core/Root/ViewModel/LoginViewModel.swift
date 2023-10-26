//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-26.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func singIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
