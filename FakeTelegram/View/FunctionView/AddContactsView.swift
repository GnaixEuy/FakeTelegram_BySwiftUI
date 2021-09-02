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
    @State private var telephonenumber: [Int] = []
    
    @Environment(\.presentationMode)  var presentationMode
    
    var body: some View {
        
        VStack{
            HStack(alignment: .center, spacing: 0, content: {

                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("取消")
                })
                
                Spacer()
                
                Text("新建联系人")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("创建")
                })
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
                    
                    TextField("名字", text: self.$name)
                        .keyboardType(.namePhonePad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.vertical, 1)

                    TextField("姓氏", text: self.$name)
                        .keyboardType(.namePhonePad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing, 1)
                })
            }
            
            Divider()
            
           //function：添加手机号，先不做
        }
    }
}

struct AddContactsView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactsView()
            .preferredColorScheme(.dark)
    }
}
