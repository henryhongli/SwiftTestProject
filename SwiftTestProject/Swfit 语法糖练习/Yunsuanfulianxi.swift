//
//  Yunsuanfulianxi.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//



//
/**
 
 
 u运算符联系
 
 */


import UIKit

class Yunsuanfulianxi: NSObject {
    func test() {
        //比较运算符  === !==   判断两个对象(类, struct 不可以)的引用是否相同, 连个对象是否指向同一块内存
         let array = NSArray(array: ["1"])
         
         let array2 = NSArray(array: ["1"])
         let array3 = array
         
         if array !== array2 {
             print(" array  array2 引用不相同")
         }
         if array === array3 {
             print(" array  array3 引用相同")
         }
         
        //合并空值运算符  ??
         let a : String? = nil
         
         let b = a ?? "h"
         print(b)
         
         //区间运算符 ... 开区间   ..< 半开区间, 包含起始但不包含结束
         for item in 1...5{
             print(item)// 1,2,3,4,5
         }
         
         let aStr = "123456"
         
         for index in 0..<aStr.count{ //0...aStr.count - 1
             print(index)// 1,2,3,4,5,6
         }
         
         
         //单侧区间,  遍历到哪里结束 或者 从哪里开始
         let newArr = [1,2,3,4,5]
         for item in newArr[2...] {
             print(item)//2,3,4,5
         }
         for item in newArr[...2] {
             print(item)//1,2
         }
         for item in newArr[..<2] {
             print(item)//1
         }
    }
}
