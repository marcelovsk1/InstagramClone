//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
            // pic an stats
            HStack {
                
            }
            
            // name an bio
            VStack {
                
            }
            
            //action button
                
            Button {
                    
            } label: {
                 Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .overlay (
                        RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1)
                    )
            }
            
            Divider()
        }
            
        // post grid view
            
        }
    }
}

#Preview {
    ProfileView()
}
