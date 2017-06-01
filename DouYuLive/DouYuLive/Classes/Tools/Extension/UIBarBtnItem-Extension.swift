//
//  UIBarBtnItem-Extension.swift
//  DouYuLive
//
//  Created by 晁博 on 2017/6/1.
//  Copyright © 2017年 狂虐iOS(中国). All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    class func creatItem(normalImageName:String, highlightImageName:String, itemSize:CGSize)-> UIBarButtonItem
    {
        let btn = UIButton()
        btn.frame = CGRect(origin: .zero, size: itemSize)
        btn.setImage(UIImage(named: normalImageName), for: .normal)
        btn.setImage(UIImage(named: highlightImageName), for: .highlighted)
        
        return UIBarButtonItem(customView: btn)
    }
    
    convenience init(normalImageName:String, highlightImageName:String, itemSize:CGSize)
    {
        let btn = UIButton()
        btn.frame = CGRect(origin: .zero, size: itemSize)
        btn.setImage(UIImage(named: normalImageName), for: .normal)
        btn.setImage(UIImage(named: highlightImageName), for: .highlighted)
        self.init(customView: btn)
    }

}
