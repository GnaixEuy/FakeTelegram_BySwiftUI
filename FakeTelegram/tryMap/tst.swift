//
//  tst.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/24.
//

import SwiftUI

struct tst: View {
    var body: some View {
        ZStack{
            MapView()
                .ignoresSafeArea(.all)
                
        }
    }
}

struct tst_Previews: PreviewProvider {
    static var previews: some View {
        tst()
    }
}
