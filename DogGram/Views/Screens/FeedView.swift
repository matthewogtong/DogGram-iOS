//
//  FeedView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/22/23.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(posts.dataArray, id: \.self) { post in
                    PostView(post: post)
                }
            }
        }
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject())
        }
    }
}
