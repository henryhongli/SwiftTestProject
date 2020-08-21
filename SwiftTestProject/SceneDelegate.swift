//
//  SceneDelegate.swift
//  SwiftTestProject
//
//  Created by 洪利 on 2019/12/25.
//  Copyright © 2019 6x. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            print("********\n开始任务 线程---\(Thread.current)\n*******")
            
            
/************       同步任务 + 并发队列          ***************/
//            ///全局并发队列
//            let queue = DispatchQueue.global()
//            ///同步任务1
//            queue.sync {
//                sleep(1)
//                print("任务1 线程---\(Thread.current)")
//            }
//            ///同步任务2
//            queue.sync {
//                sleep(1)
//                print("任务2 线程---\(Thread.current)")
//            }
//
//            /************       同步任务 + 串行队列          ***************/
//            ///构建新串行队列
//            let serialQueue = DispatchQueue(label: "serial",  attributes: .init(rawValue: 0))
//            serialQueue.sync {
//                sleep(1)
//                print("任务1 线程---\(Thread.current)")
//            }
//            serialQueue.sync {
//                sleep(1)
//                print("任务2 线程---\(Thread.current)")
//            }
            
            
//           /************       同步任务 + 主队列          ***************/
//           ///构建新串行队列
//           let mainQueue = DispatchQueue.main
//           mainQueue.sync {
//               sleep(1)
//               print("任务1 线程---\(Thread.current)")
//           }
//           mainQueue.sync {
//               sleep(1)
//               print("任务2 线程---\(Thread.current)")
//           }
            
            
            
//            /************       异步任务 + 并发队列          ***************/
//            ///构建新串行队列
//            let global = DispatchQueue.global()
//            global.async {
//                for _ in 0...3{
//                    print("任务1 线程---\(Thread.current)")
//                }
//            }
//            global.async {
//                for _ in 0...3{
//                    print("任务2 线程---\(Thread.current)")
//                }
//            }
            
            
            
//            /************       异步任务 + 串行队列          ***************/
//            ///构建新串行队列
//            let serial = DispatchQueue(label:"serial", attributes: .init(rawValue: 0))
//            serial.async {
//                for _ in 0...3{
//                    print("任务1 线程---\(Thread.current)")
//                }
//            }
//            serial.async {
//                for _ in 0...3{
//                    print("任务2 线程---\(Thread.current)")
//                }
//            }
//            print("*********\n结束任务 线程---\(Thread.current)\n***********")
            
            
//            /************       异步任务 + 主队列          ***************/
//            ///构建新串行队列
//            let main = DispatchQueue.main
//            main.async {
//                for _ in 0...3{
//                    print("任务1 线程---\(Thread.current)")
//                }
//            }
//            main.async {
//                for _ in 0...3{
//                    print("任务2 线程---\(Thread.current)")
//                }
//            }
            
            
            
            
//            /************       其他线程 :异步任务 + 同步任务回调 主队列         ***************/
//            let globle = DispatchQueue.global()
//            let main = DispatchQueue.main
//            globle.async {
//                sleep(1)
//                print("异步下载任务, \(Thread.current)")
//                main.sync {
//                    print("下载结果回调 \(Thread.current)")
//                }
//            }
//
//            print("*********\n结束任务 线程---\(Thread.current)\n***********")
            
            
            
            
            /************       其他线程 :异步任务 + 同步任务回调 主队列         ***************/
//            let globle = DispatchQueue.global()
//            let main = DispatchQueue.main
//            globle.async {
//                sleep(1)
//                print("异步下载任务1, \(Thread.current)")
//                main.async {
//                    print("下载结果1回调 \(Thread.current)")
//                }
//            }
//            globle.async {
//                sleep(1)
//                print("异步下载任务2, \(Thread.current)")
//                main.async {
//                    print("下载结果2回调 \(Thread.current)")
//                }
//            }
//
//
//            print("*********\n结束任务 线程---\(Thread.current)\n***********")
            
            
            
            
            
            
            
            
            
            
            
            ///自定义串行队列
            let serial1 = DispatchQueue(label: "serial1", attributes: .init(rawValue: 0))
            ///主队列
//            let serial1 = DispatchQueue.main
            ///并发队列
//            let serial1 = DispatchQueue(label: "serial1", attributes: .concurrent)
            serial1.sync {
                print("1, \(Thread.current)")
                serial1.sync {
                    print("2, \(Thread.current)")
                }
                print("3, \(Thread.current)")
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//            //错误处理
//            let payment = Cuowuchuli()
//
//            do{
//                try payment.充值(money: 8, payWay: .alipay)
//            }catch PayError.small{
//                payment.小额(money: 8)
//            }catch PayError.wrongWay{
//                payment.支付宝(money: 8)
//            }catch{
//
//            }
//
//
//
//
//            //d字符串 字符
//            StringAndChar().test()
//
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

