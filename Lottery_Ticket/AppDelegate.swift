//
//  AppDelegate.swift
//  Lottery_Ticket
//
//  Created by 段林江 on 2018/5/22.
//  Copyright © 2018年 段林江. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = ViewController();
        self.window?.makeKeyAndVisible()
        return true
    }


}

