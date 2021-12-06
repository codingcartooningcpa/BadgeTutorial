//
//  MessageViewModel.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  ViewModel to interact with View and Model.

import Foundation

class MessageViewModel: ObservableObject {
    @Published var message = Message(messageText: "I can create a dynamic badge!", likeCount: 0)
    
    func addOneLike() {
        message.likeCount += 1
    }
    
    func fetchLikes() -> Int {
        return message.likeCount
    }
    
    func getMessage() -> String {
        return message.messageText
    }
}
