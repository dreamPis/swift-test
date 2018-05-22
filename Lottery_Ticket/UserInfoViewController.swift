//
//  UserInfoViewController.swift
//  Lottery_Ticket
//
//  Created by 段林江 on 2018/5/22.
//  Copyright © 2018年 段林江. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {

    let fullScreen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        myLabel.backgroundColor = UIColor.lightGray
        myLabel.text = "用户"
        myLabel.textAlignment = .center
        myLabel.center = CGPoint(x: fullScreen.width * 0.5, y: fullScreen.height * 0.5)
        self.view.addSubview(myLabel)
    }


}
