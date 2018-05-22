//
//  ViewController.swift
//  Lottery_Ticket
//
//  Created by 段林江 on 2018/5/22.
//  Copyright © 2018年 段林江. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    //页面
    let indexView = IndexViewController()
    let noticeView = NoticeViewController()
    let findView = FindViewController()
    let userInfoView = UserInfoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTabBarItem(view: indexView, title: "首页", imgName: "home_tabbar_night_32x32_", imgSelName: "home_tabbar_press_32x32_")
        addTabBarItem(view: noticeView, title: "首页", imgName: "huoshan_tabbar_night_32x32_", imgSelName: "huoshan_tabbar_press_32x32_")
        addTabBarItem(view: findView, title: "首页", imgName: "mine_tabbar_night_32x32_", imgSelName: "mine_tabbar_press_32x32_")
        addTabBarItem(view: userInfoView, title: "首页", imgName: "video_tabbar_night_32x32_", imgSelName: "video_tabbar_press_32x32_")
        
        self.viewControllers = [indexView, noticeView, findView, userInfoView]
        self.selectedIndex = 0
    }
    
    func addTabBarItem(view:UIViewController, title:String, imgName:String, imgSelName:String) {
        view.tabBarItem.title = title
        view.tabBarItem.image = UIImage(named: imgName)
        view.tabBarItem.selectedImage = UIImage(named: imgSelName)
    }

}

