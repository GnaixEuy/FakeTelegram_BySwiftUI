//
//  InvitationFriendsView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/9/9.
//

import SwiftUI

struct InvitationFriendsView: View {
    
    @Environment(\.presentationMode)  var presentationMode
    
    var body: some View {
        
        HStack(spacing: 0) {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("关闭")
            })
            
            Spacer()
            
            Text("邀请朋友")
                .font(.system(size: 20))
                .foregroundColor(.black)
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("全选")
            })
        }
        .padding(.horizontal)
    }
}

struct InvitationFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationFriendsView()
    }
}
