//
//  BadgeTutorialApp.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  @main

import SwiftUI

@main
struct BadgeTutorialApp: App {
    @StateObject var messageData = MessageViewModel()
    
    var body: some Scene {
        WindowGroup {
            MessagesTabView()
                .environmentObject(messageData)
        }
    }
}
