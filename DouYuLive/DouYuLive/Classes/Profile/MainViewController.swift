//
//  MainViewController.swift
//  DouYuLive
//
//  Created by 晁博 on 2016/11/3.
//  Copyright © 2016年 狂虐iOS(中国). All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加子控制器，顺序可调
        self.addSubController(storyboardName: "Home")
        self.addSubController(storyboardName: "Live")
        self.addSubController(storyboardName: "Facous")
        self.addSubController(storyboardName: "Profile")
    }
    
    //自定义添加子控制器私有方法
    private func addSubController(storyboardName:String) -> Void{
        //bundle:参数传nil,默认中MainBundle中获取
        //instantiateInitialViewController故事版的初始化控制器，可选类    
        let childVC = UIStoryboard.init(name: storyboardName, bundle: nil).instantiateInitialViewController()!
        self.addChildViewController(childVC)
    }
}
