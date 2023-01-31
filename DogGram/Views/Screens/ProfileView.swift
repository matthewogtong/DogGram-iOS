//
//  ProfileView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/24/23.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var profileDisplayName: String
    @State var showSettings: Bool = false
    
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
            showSettings.toggle()
        }, label: {
            Image(systemName: "line.horizontal.3")
        })
                                    .accentColor(colorScheme == .light ? Color.MyTheme.purpleColor : Color.MyTheme.yellowColor)
                                    .opacity(isMyProfile ? 1.0 : 0.0)
        )
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .preferredColorScheme(colorScheme)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView(profileDisplayName: "matt", isMyProfile: true, profileUserID: "")
        }
    }
}
