//
//  ContentView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AllTalkMessageView()
                .tabItem { Label("联系人", systemImage:"person.circle.fill") }
            AllTalkMessageView()
                .tabItem { Label("聊天", systemImage:"bubble.left.and.bubble.right.fill") }
            AllTalkMessageView()
                .tabItem { Label("设置", systemImage:"gear") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//                    .preferredColorScheme(.dark)
    }
}

//
//加入了导航栏
//加入了标题栏
//加入了跳转
