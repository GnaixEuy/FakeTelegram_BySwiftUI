//
//  CallView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/9/2.
//

import SwiftUI

struct CallView: View {
    var body: some View {
        NavigationView{
            Text("⚠️施工中")
                .navigationBarItems(leading: CallNavigationView())
        }
    }
}

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
