//
//  MessageView.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  Message and button.  When button tapped, adds a like to count.

import SwiftUI

struct MessageButtonView: View {
    
    @EnvironmentObject var messageData: MessageViewModel
    
    var body: some View {
        VStack {
            Text(messageData.getMessage())
                .font(.title3)
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
        .onAppear {
            print("x")
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageButtonView()
            .environmentObject(MessageViewModel())
    }
}
