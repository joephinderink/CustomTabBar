//
//  TabBar.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct TabBar: View {
    
    @EnvironmentObject var tabbar : tabBar
    let bottomScreen = UIScreen.main.bounds.height
    
    var body: some View {
        HStack {
            Button (action: {
                withAnimation 
                tabbar.home = true
                tabbar.person = false
                }
            }, label: {
                HStack {
                    if tabbar.home {
                        Text("Home")
                            .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .opacity(0.8)
                        .offset(x: bottomScreen / 17)
                    }
                Image(systemName: "house")
                    .frame(width: 30, height: 35)
                    .background(tabbar.home ? Color.white : nil)
                    .cornerRadius(tabbar.home ? 12 : 0)
                    .padding(50)
                    .foregroundColor(.black)
                }
            })
            Button (action: {
                withAnimation {
                tabbar.person = true
                    tabbar.home = false
                }
            }, label: {
                HStack {
                    if tabbar.person {
                        Text("Person")
                            .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .opacity(0.8)
                        .offset(x: bottomScreen / 17)
                    }
                Image(systemName: "person")
                    .frame(width: 30, height: 35)
                    .background(tabbar.person ? Color.white : nil)
                    .cornerRadius(tabbar.person ? 12 : 0)
                    .padding(50)
                    .foregroundColor(.black)
                }
            })
        }
        .frame(width: UIScreen.main.bounds.width - 20, height: 60)
        .background(Color.white)
        .opacity(0.3)
        .cornerRadius(25)
        .offset(y: bottomScreen / 2.4)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
