//
//  testAF.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/10/9.
//

import Foundation
import Alamofire


func startLoad() -> String {
    
    let url = URLRequest(url: URL(string: "http://localhost:8888/getSchoolInfo")!)
    
    var tmpStr = ""
    
    AF.request(url)
        .responseString { response in
            switch response.result {
            case let .success(data):
                tmpStr = String(data)
            case let .failure(error):
                print(error)
            }
        }
    print("func里"+tmpStr)
    return tmpStr
}
