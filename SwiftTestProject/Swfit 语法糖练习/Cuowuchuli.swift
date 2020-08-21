//
//  错误处理.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//

import UIKit


enum PayWay {
    case wx
    case alipay
}


enum PayError: Error {
    case small, wrongWay
    
    var description: String {
        switch self {
        case .small: return "请使用小额充值方式"
        case .wrongWay: return "请使用支付宝渠道充值"
        }
    }
}

class Cuowuchuli: NSObject {

    func 充值(money: Int8, payWay: PayWay) throws {
        if payWay == .alipay {
            throw PayError.wrongWay
        }else if money < 10 {
            throw PayError.small
        }
    }
    func 小额(money: Int8) {
        print("小额   充值成功")
    }
    func 支付宝(money: Int8) {
        print("支付宝   充值成功")
    }
    
    
}
