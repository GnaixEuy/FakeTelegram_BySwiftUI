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

struct tst: View {
    
    var ScreenSize: CGRect = UIScreen.main.bounds
    
    var body: some View {
        
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
                
                Text("集美大学诚毅学院（Chengyi University College， Jimei University）创办于2003年，是经教育部批准，由集美大学与福建集美大学教育发展基金会合作举办的独立学院。截至2021年3月，学校占地面积550多亩；下设11个教学系（院）、开设37个本科专业；有专任教师近800人，在校生近15000人。")
            }
            .frame(width: self.ScreenSize.width - 30, alignment: .leading)
            .offset(y: -240)
            .zIndex(998)
            
            
            
            
            
        }
        
    }
}

struct tst_Previews: PreviewProvider {
    static var previews: some View {
        tst()
    }
}
