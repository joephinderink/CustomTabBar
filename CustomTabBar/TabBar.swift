//
//  TabBar.swift
//  CustomTabBar
//
//  Created by Joep Hinderink on 10/01/2021.
//

import SwiftUI

struct TabBar: View {
    
    @State var tabbar = tabBar()
    let bottomScreen = UIScreen.main.bounds.width
    
    var body: some View {
        HStack {
            Button (action: {
                tabbar.home = true
                tabbar.person = false
            }, label: {
                Image(systemName: "house")
                    .frame(width: 30, height: 35)
                    .background(tabbar.home ? Color.white : nil)
                    .cornerRadius(tabbar.home ? 8 : 0)
                    .padding(50)
                    .foregroundColor(.black)
            })
            Button (action: {
                tabbar.home = false
                tabbar.person = true
            }, label: {
                Image(systemName: "person")
                    .frame(width: 30, height: 35)
                    .background(tabbar.person ? Color.white : nil)
                    .cornerRadius(tabbar.person ? 5 : 0)
                    .padding(50)
                    .foregroundColor(.black)
            })
        }
        .frame(width: UIScreen.main.bounds.width - 20, height: 60)
        .background(Color.white)
        .opacity(0.3)
        .cornerRadius(25)
        .offset(y: bottomScreen - 25)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
