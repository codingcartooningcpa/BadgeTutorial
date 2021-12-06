//
//  Basic.swift
//  BadgeTutorial
//
//  Created by Debra Kerman on 12/3/21.
//
//  Basic implementation of the badge() modifier

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
        
        TabView {
            Text("Home Tab")
                .tabItem {
                    Text("String")
                }
                .badge("hi")
        }
    }
}

struct Basic_Previews: PreviewProvider {
    static var previews: some View {
        Basic()
    }
}
