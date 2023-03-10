//
//  CommentsView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/22/23.
//

import SwiftUI

struct CommentsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var submissionText: String = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack {
                    ForEach(commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            
            HStack {
                
                Image("nimbus1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                
                Button {
                    print("oh hi there!")
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                }
                .foregroundColor(colorScheme == .light ? Color.MyTheme.purpleColor : Color.MyTheme.yellowColor)
            }
            .padding(.all, 6)
        }
        .padding(.horizontal)
        .navigationTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
    }
    
    // MARK: FUNTIONS
    
    func getComments() {
        
        print("GET COMMENTS FROM DATABASE")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "matt", content: "This is the first comment.", dateCreated: Date())
        
        let comment2 = CommentModel(commentID: "", userID: "", username: "chrissy", content: "This is the second comment.", dateCreated: Date())
        
        let comment3 = CommentModel(commentID: "", userID: "", username: "nimbus", content: "I'm a dog heh.", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        
    }
    
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
