//
//  AppDelegate.swift
//  DouYuLive
//
//  Created by 晁博 on 2016/11/3.
//  Copyright © 2016年 狂虐iOS(中国). All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //修改tabBar着色
        UITabBar.appearance().tintColor = UIColor.orange;
        return true
    }
}

