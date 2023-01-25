//
//  ProfileView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/24/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var profileDisplayName: String
    var isMyProfile: Bool
    var profileUserID: String
    
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProfileHeaderView(profileDisplayName: $profileDisplayName)
            Divider()
            ImageGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
            print("hello")
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(Color.MyTheme.purpleColor)
                                    .opacity(isMyProfile ? 1.0 : 0.0)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(profileDisplayName: "matt", isMyProfile: true, profileUserID: "")
        }
    }
}
