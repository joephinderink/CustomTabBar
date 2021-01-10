//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI
import Combine

class tabBar: ObservableObject {
    @Published var home: Bool = true
    @Published var person: Bool = false
}

struct ContentView: View {
    
    @EnvironmentObject var tabbar : tabBar
    
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
