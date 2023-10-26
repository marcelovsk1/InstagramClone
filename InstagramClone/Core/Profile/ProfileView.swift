//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
   
//    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
            ScrollView {
                // header
                ProfileHeaderView(user: user)
            // post grid view
                
                PostGridView(posts: Post.MOCK_POSTS)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
           
        }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
