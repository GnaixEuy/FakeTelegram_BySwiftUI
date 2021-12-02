//
//  AddContactsView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/25.
//

import SwiftUI

struct AddContactsView: View {
    
    @State private var name: String = ""
    @State private var lastname: String = ""
    @State private var telephonenumber: [String] = []
    
    @State private var waringAlertState: Bool = false
    @State private var telephoneNumberNum: Int8 = 0
    
    @Environment(\.presentationMode)  var presentationMode
    
    var body: some View {
        
        VStack{
            HStack( spacing: 0, content: {
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("取消")
                })
                
                Spacer()
                
                Text("新建联系人")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    if(self.name==""||self.lastname==""){
                        self.waringAlertState = true
                    }else{
                        self.presentationMode.wrappedValue.dismiss()
                        print("创建指令：\(self.name+self.lastname)")
                    }
                    
                }, label: {
                    Text("创建")
                })
                    .alert(isPresented: self.$waringAlertState) {
                        Alert(
                            title: Text("警告信息"),
                            message: Text("缺少关键信息")
                        )
                    }
            })
                .padding(.horizontal)
            
            Divider()
            
            HStack{
                
                Image("logo")
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: 75, height: 75, alignment: .center)
                
                VStack(alignment: .center, content: {
                    TextField("名字", text: self.$lastname)
                    TextField("姓氏", text: self.$name)
                })
                    .keyboardType(.namePhonePad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical, 1)
            }
            
            Divider()
            
            //function：添加手机号，先不做
            
            VStack{
                List{
                    HStack{
                        Button {
                            print(self.telephoneNumberNum+=1)
                        } label: {
                            Label(
                                title: { Text("手机").fontWeight(.bold) },
                                icon: { Image(systemName: "plus.circle.fill").colorMultiply(.red) }
                            )
                            
                        }
                        
                        Divider()
                        
    //                    TextField("姓氏", text: self.$telephonenumber[0])
                        Text("这里是测试")
                    }
                }
            }
        }
        
    }
}

struct AddContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactsView()
//            .preferredColorScheme(.dark)
    }
}
