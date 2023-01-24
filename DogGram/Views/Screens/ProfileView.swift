//
//  ProfileView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/24/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ProfileHeaderView()
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
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
