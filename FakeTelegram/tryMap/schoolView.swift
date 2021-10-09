//
//  tst.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/24.
//

//佛祖保佑        永无BUG
//佛曰:
//写字楼里写字间，写字间里程序员；
//程序人员写程序，又拿程序换酒钱。
//酒醒只在网上坐，酒醉还来网下眠；
//酒醉酒醒日复日，网上网下年复年。
//但愿老死电脑间，不愿鞠躬老板前；
//奔驰宝马贵者趣，公交自行程序员。
//别人笑我忒疯癫，我笑自己命太贱；
//不见满街漂亮妹，哪个归得程序员？

import SwiftUI
import MapKit
import Alamofire

struct schoolView: View {
    
    private let ScreenSize: CGRect = UIScreen.main.bounds
    private let school_telephone_number: String = "+86(592)6183185"
    private var school_introduce: String = "net"
    
    @State private var call_phone_actionSheet_state: Bool = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack{
                
                MapView(centerCoordinate: .constant(MKPointAnnotation.example.coordinate))
                    .ignoresSafeArea(.all)
                    .frame(width: self.ScreenSize.width, height: 300, alignment: .top)
                    .offset( y: -140)
                    .zIndex(1.0)
                
                Image("chengyilogo")
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width / 1.36, alignment: .center)
                    .offset( y: -250)
                    .zIndex(999)
                    .shadow(color: .red, radius: 10, x: 0.0, y: 0.0)
                
                VStack(alignment: .leading){
                    Text("集美大学诚毅学院")
                        .font(.title)
                    HStack{
                        Text("Chengyi University College， Jimei University")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                        .frame( height: 20)
                    
                    Text(self.school_introduce)
                    
                }
                .frame(width: self.ScreenSize.width - 30, alignment: .leading)
                .offset(y: -240)
                .zIndex(998)
                
                Text("校园一景")
                //                .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(.title)
                    .frame(alignment: .leading)
                    .offset(x: -self.ScreenSize.width/3 ,y:-220)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        ForEach( 1 ..< 5) { i in
                            Image("jmuImg\(i)")
                                .resizable()
                                .scaledToFit()
                                .frame(height:150, alignment: .center)
                                .padding(.horizontal,3)
                        }
                    }
                })
                    .frame(width: self.ScreenSize.width, alignment: .center)
                    .padding(.horizontal)
                    .ignoresSafeArea(.all)
                    .border(Color.black, width: 2)
                    .offset(y:-220)
                
                VStack(alignment: .leading){
                    Text("详细信息")
                    //                        .bold()
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    Spacer()
                        .frame( height: 10)
                    
                    VStack(alignment: .leading){
                        Text("电话")
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                        
                        Button(self.school_telephone_number) {
                            self.call_phone_actionSheet_state = true
                        }
                        .actionSheet(isPresented: self.$call_phone_actionSheet_state){
                            ActionSheet(
                                title: Text("拨打电话至"),
                                buttons:[
                                    .cancel(),
                                    .default(
                                        Text(self.school_telephone_number),
                                        action:{
                                            let phone = "tel://"
                                            let phone_number_format = self.school_telephone_number + phone
                                            guard let url = URL(string: phone_number_format) else { return }
                                            //                                            UIApplication.shared.openURL(url)       //deprecated
                                            UIApplication.shared.open(url)
                                        }
                                    )
                                ]
                            )
                        }
                    }
                }
                .offset(x: -self.ScreenSize.width/3.3,y:-210)
                .padding()
            }
        })
    }
    
    
}

struct schoolView_Previews: PreviewProvider {
    static var previews: some View {
        schoolView()
    }
}
