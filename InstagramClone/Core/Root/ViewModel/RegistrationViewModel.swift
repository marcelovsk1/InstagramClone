//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-26.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await  AuthService.shared.createUser(withEmail: email, password: password, username: username)
    }
}
