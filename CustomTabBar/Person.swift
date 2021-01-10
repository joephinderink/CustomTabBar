//
//  Person.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct Person: View {
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            Text("Person")
        }
    }
}

struct Person_Previews: PreviewProvider {
    static var previews: some View {
        Person()
    }
}
