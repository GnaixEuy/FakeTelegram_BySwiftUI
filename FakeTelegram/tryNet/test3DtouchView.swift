//
//  test3DtouchView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/12/2.
//

import SwiftUI

struct test3DtouchView: View {
    @State private var backgroundColor = Color.red

    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)

            Text("Change Color")
                .padding()
                .contextMenu {
                    Button(action: {
                        self.backgroundColor = .red
                    }) {
                        Text("Red")
                    }

                    Button(action: {
                        self.backgroundColor = .green
                    }) {
                        Text("Green")
                    }

                    Button(action: {
                        self.backgroundColor = .blue
                    }) {
                        Text("Blue")
                    }
                }
        }
    }
}

struct test3DtouchView_Previews: PreviewProvider {
    static var previews: some View {
        test3DtouchView()
    }
}
