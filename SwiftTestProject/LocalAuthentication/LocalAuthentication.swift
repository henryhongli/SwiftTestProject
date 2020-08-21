//
//  LocalAuthentication.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2020/5/12.
//  Copyright © 2020 6x. All rights reserved.
//

import UIKit
import LocalAuthentication

open class LocalAuthentication {

    private let deviceVersion = Float(UIDevice().systemVersion) ?? 0
    static let `default` = LocalAuthentication()
    private let laContext = LAContext()
    init() {
        
        if deviceVersion >= 9.0 {
            laContext.localizedFallbackTitle = "手动输入sdf"
        }else{
            laContext.localizedFallbackTitle = ""
        }
    }
    func start(){
        guard laContext.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil) else {
            /// 不支持生物识别, 输入设备解锁密码
            recoveryLock()
            return
        }
        //支持生物识别
        unlock()
    }
    
    
    
    func unlock(){
        laContext.localizedCancelTitle = "取消"
        laContext.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "123456") { (state, error) in
            if state {
                /// 验证成功
                print("验证成功")
            }else{
                
                print(error)
            }
        }
    }
    
    func recoveryLock(){}
}



