//
//  ArrayDictionrySet.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//

import UIKit

class ArrayDictionrySet: NSObject {

    
    
    func test() {
        //数组
        //简写
        let arr : [String] = ["1"]
        //利用类型推断
        let arr2 = ["1"]
        
        //利用repeating 初始化默认数组,期内元素类型相同
        let arr3 = Array(repeating: UILabel(), count: 3)
        for label in arr3 {
            label.text = "1"
        }
        //对比
        var arr33 = [UILabel]()
        for index in 1...3 {
            let label = UILabel()
            label.text = "1"
            arr33.append(label)
        }
        
        //数组 拼接
        var arr4 = arr + arr2//[1,1]
        arr4 += ["2"]//[1,1,2]
        //数组判空
        if arr4.isEmpty {
            //...
        }
        //对比
        if arr4.count == 0{
            //...
        }
        //数组内容修改
        arr4[0] = "0" // [0,1,2]
        arr4[0...1] = ["3","2","1"]//[3,2,1,2]
        
        
        //合集
        
        /**
         Set 类型的哈希值

         为了能让类型储存在合集当中，它必须是可哈希的——就是说类型必须提供计算它自身哈希值的方法。哈希值是Int值且所有的对比起来相等的对象都相同，比如 a == b，它遵循 a.hashValue == b.hashValue。
         
         */
        
        
    }
}
