//
//  CellPost.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/20.
//

import SwiftUI

struct CellPostView: View {
    
    @State private var isRemind: Bool = false
    
    var body: some View {
        HStack(){
            Image("logo")
                .resizable()
                .clipShape(Circle())
                .frame(width: 75, height: 75, alignment: .center)
            
            VStack(alignment: .leading, spacing: nil, content: {
                
                HStack(alignment: .center, spacing: 0, content: {
                    
                    Text("ibeta 假尝鲜派demo1234567")
                        .fontWeight(.heavy)
                        .font(.system(size: 20))
                        .padding(.trailing, 20.0)
                    
                    Button(action: {
                        self.isRemind = !self.isRemind
                    }, label: {
                        Image(systemName: self.isRemind ? "eye":"eye.slash")
                    
                    })
                    .frame(width: 24, height: 14, alignment: .bottomTrailing)
                    .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("5:44 PM")
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                })
                
                HStack(content: {
                    VStack(alignment: .leading){
                        Text("GnaixEuy")
                            .fontWeight(.regular)
                            .font(.system(size: 16))
                        
                        Text("一些文字，swiftUI学习")
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                    }
                    .padding(.horizontal, 3)
                    
                    Spacer()
                    
                    Text("7.6k")
                        .font(.system(size: 18))
                        .foregroundColor(Color.white)
                        .background(Color.gray)
                        .multilineTextAlignment(.trailing)
                        .lineLimit(1)
                        .cornerRadius(8)
                        .frame(width: 60, height: 40, alignment: .center)
                    
                })
            }).lineLimit(1)
        }
    }
}

struct CellPostView_Previews: PreviewProvider {
    static var previews: some View {
        CellPostView()
            .preferredColorScheme(.dark)
    }
}
