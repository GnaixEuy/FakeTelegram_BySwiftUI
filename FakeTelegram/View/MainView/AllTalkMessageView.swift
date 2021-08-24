//
//  AllTalkMessageView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/21.
//

import SwiftUI

struct AllTalkMessageView: View {
    var body: some View {
        NavigationView{
            PostListView()
            .navigationBarTitle("聊天")
            .navigationBarItems(leading: TalkNavigationView())
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AllTalkMessageView_Previews: PreviewProvider {
    static var previews: some View {
        AllTalkMessageView()
    }
}
