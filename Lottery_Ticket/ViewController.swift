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
        
        addTabBarItem(view: indexView, title: "首页", imgName: "home_tabbar_32x32_", imgSelName: "home_tabbar_press_32x32_")
        addTabBarItem(view: noticeView, title: "西瓜视频", imgName: "video_tabbar_32x32_", imgSelName: "video_tabbar_press_32x32_")
        addTabBarItem(view: findView, title: "微头条", imgName: "weitoutiao_tabbar_32x32_", imgSelName: "weitoutiao_tabbar_press_32x32_")
        addTabBarItem(view: userInfoView, title: "小视频", imgName: "huoshan_tabbar_32x32_", imgSelName: "huoshan_tabbar_press_32x32_")
        
//        addCenterButton(view: self.view, btnImg: UIImage(named: "feed_publish_44x44_")!, imgSelName: "feed_publish_close_44x44_", selectFun: "buttonClick")
        
        self.viewControllers = [indexView, noticeView, findView, userInfoView]
        self.selectedIndex = 0
    }
    
    func addTabBarItem(view:UIViewController, title:String, imgName:String, imgSelName:String) {
        let img = UIImage(named: imgName)
//        let fullScreen = UIScreen.main.bounds
        
        view.tabBarItem.title = title
        view.tabBarItem.image = img
        view.tabBarItem.selectedImage = UIImage(named: imgSelName)
    }
    
    func addCenterButton(view:UIView, btnImg:UIImage, imgSelName:String, selectFun:String) {
        let button:UIButton = UIButton(type: UIButtonType.custom)
        button.frame = CGRect(x: 0, y: 0, width: btnImg.size.width, height: btnImg.size.height)
        button.setImage(btnImg, for: UIControlState.normal)
        button.setImage(UIImage(named: imgSelName), for: UIControlState.selected)
        button.adjustsImageWhenDisabled = true
        button.addTarget(self, action: Selector(selectFun), for: .touchUpInside)
        let heightDiff:CGFloat = btnImg.size.height - self.tabBar.frame.size.height
        if(heightDiff < 0){
            button.center = self.tabBar.center;
        }else{
            var center:CGPoint = self.tabBar.center;
            center.y = center.y - heightDiff/2.0
            button.center = center;
        }
        view.addSubview(button)
    }
    
    func buttonClick() {
        print("我点击了按钮!")
    }

}

