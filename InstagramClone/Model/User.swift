//
//  User.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
            .init(id: NSUUID().uuidString, username: "lewishamilton", profileImageUrl: "profilePicture1", fullname: "Lewis Hamilton", bio: "Still Rising", email: "lewis@live.com"),
             
            .init(id: NSUUID().uuidString, username: "vettel", profileImageUrl: "profilePicture4", fullname: "Sebastian Vettel", bio: "Taxi Driver", email: "vettel@live.com"),
        
        .init(id: NSUUID().uuidString, username: "dannyric", profileImageUrl: "profilePicture5", fullname: "Daniel Ricciardo", bio: "The Honey Badger", email: "dannyric@live.com")
    ]
}
