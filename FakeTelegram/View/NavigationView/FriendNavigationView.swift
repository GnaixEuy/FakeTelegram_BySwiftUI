//
//  FriendNavigationView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/23.
//

import SwiftUI

struct FriendNavigationView: View {
    
    @State var presentComment: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            Button(action: {}, label: {
                Text("")
                    .fontWeight(.light)
            })
            
            Spacer()
            
            Text("联系人")
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
                .padding(.horizontal,40)
            
            Spacer()
            
            Button(action: {
                self.presentComment = true
            }, label: {
                Image(systemName: "plus")
            })
            .sheet(isPresented: self.$presentComment, content: {
                AddContactsView()
                    .frame( height: UIScreen.main.bounds.height/2)
                    .ignoresSafeArea(.all)
            })
        }
        .frame(width: CGFloat(UIScreen.main.bounds.width) - 30, height: 40, alignment: .center)
        .font(.system(size: 22))
        
    }
}

struct FriendNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        FriendNavigationView()
    }
}
