//
//  ViewModel.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//

import Foundation

class MessageViewModel: ObservableObject {
    
    @Published var numberOfLikes: Int = 0 {
        didSet {
            print("number of likes: \(numberOfLikes)")
        }
    }
}


//    var titleOfMessage: String = ""
