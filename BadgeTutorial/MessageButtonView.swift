//
//  MessageView.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  Button - when tapped, adds a like to count.

import SwiftUI

struct MessageButtonView: View {
    
    @EnvironmentObject var messageData: MessageViewModel
    
    var body: some View {
        VStack {
            Text(messageData.getMessage())
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(25)
            Button {
                messageData.addOneLike()
            } label: {
                Text("Like 👍")
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageButtonView()
            .environmentObject(MessageViewModel())
    }
}
