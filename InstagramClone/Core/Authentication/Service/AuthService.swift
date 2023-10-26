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
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Failed to login user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            // You can add additional logic to update the user's profile, like setting their username.
            let changeRequest = result.user.createProfileChangeRequest()
            changeRequest.displayName = username
            try await changeRequest.commitChanges()
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }

    func loadUserData() async throws {
        // You can load user-specific data here
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}

