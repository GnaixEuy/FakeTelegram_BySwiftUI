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
            VStack(alignment: .leading){
                ForEach(0 ..< 100) {_ in
                    ZStack{
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                EmptyView()
                            })
                            //                                                    .buttonStyle(PlainButtonStyle())
                            .opacity(0)
                        CellPostView()
                    }
                }
                
            }
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
