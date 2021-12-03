//
//  BadgeTutorialApp.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//

import SwiftUI

@main
struct BadgeTutorialApp: App {
    @StateObject var model = MessageViewModel()
    
    var body: some Scene {
        WindowGroup {
            MessagesTabView()
                .environmentObject(model)
        }
    }
}
