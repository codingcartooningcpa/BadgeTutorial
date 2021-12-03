//
//  ContentView.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//

import SwiftUI

struct MessageView: View {
    
    @EnvironmentObject var messageData: MessageViewModel
    
    var body: some View {
        VStack {
            Button {
                messageData.numberOfLikes += 1
            } label: {
                Text("Like this message")
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .environmentObject(MessageViewModel())
    }
}
