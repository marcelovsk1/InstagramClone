//
//  AuthService.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-26.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
    }
    
    func createUser(withEmail email: String, password: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
