//
//  AllFriendView.swift.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/23.
//

import SwiftUI

struct AllPeopleView: View {
    var body: some View {
        VStack(alignment: .center, content: {
            Button(action: {
                print("click")
            }, label: {
                Text("按最后上线时间排序▼")
            })
            
            Divider()
            
            ZStack{
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Label(
                            title: { Text("添加附近的人") },
                            icon: { Image(systemName: "mappin.and.ellipse")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 25, alignment: .center) }
                        ).lineLimit(1)
                    })
            }
            .padding()
            .foregroundColor(.blue)
            .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading)
            
            Divider()
            
            ZStack{
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Label(
                            title: { Text("邀请朋友") },
                            icon: { Image(systemName: "person.badge.plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 25, alignment: .center) }
                        ).lineLimit(1)
                    })
            }
            .padding()
            .foregroundColor(.blue)
            .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading)
            
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    List{
                        PeopleView()
                        PeopleView()
                        PeopleView()
                        PeopleView()
                    }
                    .padding(.leading, -23.0)
                })
                
        })
    }
}

struct AllPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        AllPeopleView()
    }
}
