//
//  PeopleView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/23.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        
        HStack(alignment: .center){
            Image("HeadPortrait")
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .frame(width: 75, height: 75, alignment: .center)
                .padding()
            
            VStack(alignment: .leading){
                Text("姓名")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.init(top: 0, leading: 0, bottom: 4, trailing: 0))
                
                Text("简介")
                    .foregroundColor(.secondary)
                    
                    .fontWeight(.light)
            }
            
            Spacer()
            
            Text("最后上线时间：8月24日12:00")
                .font(.system(size: 14))
                .lineLimit(1)
                .foregroundColor(.secondary)
                .padding()
        }
        .frame(width: UIScreen.main.bounds.width, height: 80, alignment: .center)
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
