//
//  PostListView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/22.
//

import SwiftUI

struct PostListView: View {
    var body: some View {
        ScrollView(.vertical){
            ForEach(0 ..< 100) {_ in
                NavigationLink(
                    destination: Text("详细聊天界面"),
                    label: {
                        CellPostView()
                    })
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostListView()
        }
    }
}
