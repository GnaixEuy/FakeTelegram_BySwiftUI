//
//  AllFriendView.swift.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/23.
//

import SwiftUI

struct AllPeopleView: View {
    
    @State private var sortTypeActionSheetStatus: Bool = false
    @State private var inviationFrinedSheetStatus: Bool = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            VStack(alignment: .center, content: {
                Button(action: {
                    self.sortTypeActionSheetStatus = true
                }, label: {
                    Text("按最后上线时间排序▼")
                })
                .actionSheet(isPresented: self.$sortTypeActionSheetStatus) {
                    ActionSheet(
                        title: Text("排列顺序按:"),
                        //                    message: Text("You can't undo this action."),
                        buttons:[
                            .cancel(),
                            .destructive(
                                Text("姓名")
                                //                            action: overwriteWorkout      function： 排序待加入
                            ),
                            .default(
                                Text("最后上线时间")
                                //                            action: appendWorkout
                            )
                        ]
                    )
                }
                
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
                
                Button(action: {
                    self.inviationFrinedSheetStatus = true
                }, label: {
                    Label(
                        title: { Text("邀请朋友") },
                        icon: { Image(systemName: "person.badge.plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 25, alignment: .center) }
                    )
                    .lineLimit(1)
                    .padding()
                    .foregroundColor(.blue)
                    .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading)
                    .sheet(isPresented: self.$inviationFrinedSheetStatus, content: {
                        InvitationFriendsView()
                    })
                })
                
                
                ForEach(0 ..< 100){_ in
                    NavigationLink(
                        destination: Text("buton"),
                        label: {
                            PeopleView()
                        })
                        .contextMenu{
                           schoolView()
                        }
                        
                }
                .buttonStyle(PlainButtonStyle())
                
            })
        })
    }
}

struct AllPeopleView_Previews: PreviewProvider {
    static var previews: some View {
        AllPeopleView()
    }
}
