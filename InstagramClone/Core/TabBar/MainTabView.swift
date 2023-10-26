//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfile(user: User.MOCK_USERS[0])
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
