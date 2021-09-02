//
//  CallNavigationView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/26.
//

import SwiftUI

struct CallNavigationView: View {
    
//    @State var PickerSelect: Bool = 1
    
    var body: some View {
        
        HStack(alignment: .center, spacing: nil, content: {
            
            Spacer()
            
            Picker(selection: .constant(1), label: Text("Picker"), content: {
                Text("全部").tag(1)
                Text("未接").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: UIScreen.main.bounds.width * 0.5, alignment: .trailing)
            
            Spacer()
            
            Image(systemName: "phone.badge.plus")
                .resizable()
                .scaledToFit()
                .frame(width: 31, height: 31, alignment: .center)
                .padding(.vertical, 0)
                .padding(.horizontal, 8)
        })
        .frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .center)
        .padding()
    }
}

struct CallNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CallNavigationView()
    }
}
