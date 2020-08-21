//
//  元组练习.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//

import UIKit

class ____: NSObject {

    let yuanzu = (404, "Not Found")
    var yuanzu2 = (500, "Server Error")
    let yuanzu3 = (stateCode: 200, msg: "success")
    
    
    
    func test() {
        //访问元组
        print(yuanzu.0)
        // 404
        print(yuanzu.1)
        // Not Found
        
        yuanzu2.0 = 501
        print(yuanzu2)
        
        print("The status code is \(yuanzu3.stateCode)")
        print("The status msg is \(yuanzu3.msg)")
    }
}
