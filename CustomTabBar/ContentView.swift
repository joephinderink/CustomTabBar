//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct tabBar {
     var home = true
     var person = false
}

struct ContentView: View {
    
    @State var tabbar = tabBar()
    
    var body: some View {
        VStack {
            ZStack {
                if tabbar.home {
                    Home()
                } else if tabbar.person {
                    Person()
                }
                TabBar()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
