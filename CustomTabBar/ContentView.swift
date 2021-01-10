//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var home = true
    @State var person = false
    
    var body: some View {
        VStack {
            ZStack {
                if home {
                    Home()
                } else {
                    Person()
                }
                HStack {
                    Button (action: {
                        home = true
                        person = false
                    }, label: {
                        Image(systemName: "house")
                            .frame(width: 30, height: 35)
                            .background(home ? Color.white : nil)
                            .cornerRadius(home ? 8 : 0)
                            .padding(50)
                            .foregroundColor(.black)
                    })
                    Button (action: {
                        home = false
                        person = true
                    }, label: {
                        Image(systemName: "person")
                            .frame(width: 30, height: 35)
                            .background(person ? Color.white : nil)
                            .cornerRadius(person ? 5 : 0)
                            .padding(50)
                            .foregroundColor(.black)
                    })
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: 60)
                .background(Color.white)
                .opacity(0.3)
                .cornerRadius(25)
                .offset(y: 350)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
