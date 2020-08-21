//
//  StringAndChar.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//

import UIKit

class StringAndChar: NSObject {
    func test() {
        //多行字符串
        let aStr = """
         my name is honli, I'm frome China,

         and I'm a iOS developer

         """
        let nStr = """
        my name is honli, I'm frome China,\

        and I'm a iOS developer

        """
        print(aStr)
        /**
         my name is honli, I'm frome China,

         and I'm a iOS developer
         */
        print(nStr)
        /**
         my name is honli, I'm frome China,
         and I'm a iOS developer
         */
        
        var state = aStr.isEmpty
        state.toggle()
        //字符串判空
        if state {
            print("aStr 字符串有效")
        }
    }
}
