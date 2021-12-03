//
//  Basic.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//

import SwiftUI

struct Basic: View {
    var body: some View {
        TabView {
            Text("Home Tab")
                .tabItem {
                    Text("Hard-coded")
                }
                .badge(5)
        }
        .preferredColorScheme(.dark)
        
        TabView {
            Text("Home Tab")
                .tabItem {
                    Text("String")
                }
                .badge("hi")
        }
        .preferredColorScheme(.dark)
    }
}

struct Basic_Previews: PreviewProvider {
    static var previews: some View {
        Basic()
    }
}
