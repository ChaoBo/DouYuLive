//
//  HomeViewController.swift
//  DouYuLive
//
//  Created by 晁博 on 2016/11/3.
//  Copyright © 2016年 狂虐iOS(中国). All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController {

    public func setUpUI()
    {
        setUpNavgationBarLogo()
        setUpNavgationBarWithConvenienceInit()
    }
    
    
    public func setUpNavgationBarLogo()
    {
        let btn = UIButton()
        btn.setImage(#imageLiteral(resourceName: "logo"), for: .normal)
        btn.sizeToFit()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
    }
    
    public func setUpNavgationBarWithNormal()
    {
        let btnSize = CGSize(width: 40, height: 40)
        let historyBtn = UIButton()
        historyBtn.setImage(#imageLiteral(resourceName: "viewHistoryIconHL"), for: .normal)
        historyBtn.setImage(#imageLiteral(resourceName: "viewHistoryIcon"), for: .highlighted)
        historyBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: btnSize)
        
        let searchBtn = UIButton()
        searchBtn.setImage(#imageLiteral(resourceName: "searchBtnIconHL"), for: .normal)
        searchBtn.setImage(#imageLiteral(resourceName: "searchBtnIcon"), for: .highlighted)
        searchBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: btnSize)
        
        let qrcodeBtn = UIButton()
        qrcodeBtn.setImage(#imageLiteral(resourceName: "scanIconHL"), for: .normal)
        qrcodeBtn.setImage(#imageLiteral(resourceName: "scanIcon"), for: .highlighted)
        qrcodeBtn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: btnSize)

        let history = UIBarButtonItem(customView: historyBtn)
        let search = UIBarButtonItem(customView: searchBtn)
        let qrcode = UIBarButtonItem(customView: qrcodeBtn)
        self.navigationItem.rightBarButtonItems = [history,search,qrcode]
    }
    
    public func setUpNavgationBarWithExtension()
    {
        let btnSize = CGSize(width: 40, height: 40)
        let history = UIBarButtonItem.creatItem(normalImageName: "viewHistoryIconHL", highlightImageName: "viewHistoryIcon", itemSize: btnSize)
        let search = UIBarButtonItem.creatItem(normalImageName: "searchBtnIconHL", highlightImageName: "searchBtnIcon", itemSize: btnSize)
        let qrcode = UIBarButtonItem.creatItem(normalImageName: "scanIconHL", highlightImageName: "scanIcon", itemSize: btnSize)
        self.navigationItem.rightBarButtonItems = [history,search,qrcode]
    }

    
    public func setUpNavgationBarWithConvenienceInit()
    {
        let btnSize = CGSize(width: 40, height: 40)
        let history = UIBarButtonItem(normalImageName: "viewHistoryIconHL", highlightImageName: "viewHistoryIcon", itemSize: btnSize)
        let search = UIBarButtonItem.creatItem(normalImageName: "searchBtnIconHL", highlightImageName: "searchBtnIcon", itemSize: btnSize)
        let qrcode = UIBarButtonItem.creatItem(normalImageName: "scanIconHL", highlightImageName: "scanIcon", itemSize: btnSize)
        self.navigationItem.rightBarButtonItems = [history,search,qrcode]
    }

}
