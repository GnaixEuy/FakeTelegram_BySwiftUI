//
//  TalkNavigationView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/21.
//

import SwiftUI

struct TalkNavigationView: View {
    
    @State private var isLock = false
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Text("编辑")
                    .fontWeight(.light)
            })
            
            Spacer()
            
            Label(
                title: { Text("对话").fontWeight(.bold) },
                icon: { Image(systemName: self.isLock ? "lock.fill":"lock.open.fill") }
            )
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "square.and.pencil")
                
            })
            
        }
        .frame(width: CGFloat(UIScreen.main.bounds.width) - 30, height: 40, alignment: .center)
        .font(.system(size: 22))
        
    }
}

struct TalkNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TalkNavigationView()
    }
}
