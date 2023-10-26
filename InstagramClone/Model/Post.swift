//
//  Post.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-25.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Brazil, I love you.",
            likes: 123456,
            imageUrl: "postFeed1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
            
        ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Test",
                likes: 123456,
                imageUrl: "postFeed4",
                timestamp: Date(),
                user: User.MOCK_USERS[1]
                
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Test",
                likes: 123456,
                imageUrl: "postFeed3",
                timestamp: Date(),
                user: User.MOCK_USERS[2]
                
            ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Test",
                likes: 123456,
                imageUrl: "postFeed2",
                timestamp: Date(),
                user: User.MOCK_USERS[3]
                
            )
    ]
}
