//
//  FriendView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/23.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        NavigationView{
            AllPeopleView()
                .navigationBarItems(leading: FriendNavigationView())
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
