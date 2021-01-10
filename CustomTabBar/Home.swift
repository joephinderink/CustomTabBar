//
//  Home.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Text("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
