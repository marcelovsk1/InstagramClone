//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Marcelo Amaral Alves on 2023-10-25.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.horizontal)
            // post image and caption
            HStack(spacing: 8) {
                Image("postFeed1")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    UploadPostView()
}
