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
                .scaledToFit()
                .frame(width: 45, height: 45, alignment: .center)
                .padding(.leading, 15)
            
            VStack(alignment: .leading){
                Text("可可爱兔子")
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                
                Text("最后上线时间：8月24日12:00")
                    .font(.system(size: 14))
                    .lineLimit(1)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
        }
        .frame(width: UIScreen.main.bounds.width, height: 55, alignment: .center)
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
