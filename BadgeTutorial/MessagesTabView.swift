//
//  MessagesTabView.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  Uses the badge() modifier to display the accumulated number of likes.

import SwiftUI

struct MessagesTabView: View {
    
    @EnvironmentObject var messageData: MessageViewModel
    @State private var selectedTab = 0
    @State private var likeCountBadge = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Welcome to my app")
                .tabItem {
                    Image(systemName: "mustache")
                    Text("Welcome")
                }
                .tag(1)  //keeps tab from switching
            
            MessageButtonView()
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                    Text("Messages")
                }
                .tag(2)
                .badge(likeCountBadge)  //nothing if 0
        }
        .onChange(of: messageData.fetchLikes()) { newValue in
            likeCountBadge = messageData.fetchLikes()
            print("badge count: \(likeCountBadge)")
        }
    }
}

struct MessagesTabView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesTabView()
            .environmentObject(MessageViewModel())
    }
}
