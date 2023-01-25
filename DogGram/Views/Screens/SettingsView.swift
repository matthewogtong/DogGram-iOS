//
//  SettingsView.swift
//  DogGram
//
//  Created by Matthew Ogtong on 1/24/23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: SECTION 1: DOGGRAM
                GroupBox {
                    HStack(alignment: .center, spacing: 10) {
                        
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80, alignment: .center)
                            .cornerRadius(12)
                        
                        Text("DogGram helps people connect through posting pictures of your precious companions and sharing them across the world.")
                            .font(.footnote)
                        
                    }
                } label: {
                    SettingsLabelView(labelText: "DogGram", labelImage: "dot.radiowaves.left.and.right")
                }
                .padding()
                
                // MARK: SECTION 2: PROFILE
                GroupBox {
                    SettingsRowView(leftIcon: "pencil", text: "Display Name", color: Color.MyTheme.purpleColor)
                    SettingsRowView(leftIcon: "text.quote", text: "Bio", color: Color.MyTheme.purpleColor)
                    SettingsRowView(leftIcon: "photo", text: "Profile Picture", color: Color.MyTheme.purpleColor)
                    SettingsRowView(leftIcon: "figure.walk", text: "Sign Out", color: Color.MyTheme.purpleColor)
                } label: {
                    SettingsLabelView(labelText: "Profile", labelImage: "person.fill")
                }
                .padding()
                
                // MARK: SECTION 3: APPLICATION
                GroupBox {
                    SettingsRowView(leftIcon: "folder.fill", text: "Privacy Policy", color: Color.MyTheme.yellowColor)
                    SettingsRowView(leftIcon: "folder.fill", text: "Terms & Conditions", color: Color.MyTheme.yellowColor)
                    SettingsRowView(leftIcon: "globe", text: "DogGram's Website", color: Color.MyTheme.yellowColor)
                } label: {
                    SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                }
                .padding()
                
                // MARK: SECTION 4: SIGN OFF
                GroupBox {
                    Text("I dedicate this app to Nimbus: BestBoi \n All Rights Reserved \n ogtongm \n Copyright 2023 🐾")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .padding()
                .padding(.bottom, 80)


            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.title)
            })
                                        .accentColor(.primary)
            )
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
